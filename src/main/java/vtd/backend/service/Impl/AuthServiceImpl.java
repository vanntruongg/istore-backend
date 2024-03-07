package vtd.backend.service.Impl;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Service;
import vtd.backend.entity.dto.LoginRequest;
import vtd.backend.entity.dto.LoginResponse;
import vtd.backend.entity.dto.RefreshTokenRequest;
import vtd.backend.security.JwtService;
import vtd.backend.security.UserDetailsImpl;
import vtd.backend.security.UserDetailsServiceImpl;
import vtd.backend.service.AuthService;

@Service
@RequiredArgsConstructor
public class AuthServiceImpl implements AuthService {

  private final AuthenticationManager authenticationManager;

  private final JwtService jwtService;

  private final UserDetailsServiceImpl userDetailsService;

  @Override
  public LoginResponse login(LoginRequest loginRequest) {
    return doLogin(loginRequest.getEmail(), loginRequest.getPassword());
  }

  private LoginResponse doLogin(String email, String password) {
    var authentication = authenticationManager.authenticate(
            new UsernamePasswordAuthenticationToken(email, password)
    );

    SecurityContextHolder.getContext().setAuthentication(authentication);
    UserDetailsImpl userPrincipal = (UserDetailsImpl) authentication.getPrincipal();
    var accessToken = jwtService.generateAccessToken(userPrincipal);
    var refreshToken = jwtService.generateRefreshToken(userPrincipal);

    return LoginResponse.builder()
            .accessToken(accessToken)
            .refreshToken(refreshToken)
            .build();
  }

  @Override
  public boolean logout(HttpServletRequest request, HttpServletResponse response) {
    var auth = SecurityContextHolder.getContext().getAuthentication();
    if (auth == null) {
      return false;
    }
    UserDetailsImpl userDetails = (UserDetailsImpl) auth.getPrincipal();
    if (userDetails != null) {
      new SecurityContextLogoutHandler().logout(request, response, auth);
      SecurityContextHolder.getContext().setAuthentication(null);
      auth.setAuthenticated(false);
      return true;
    }
    return false;
  }

  @Override
  public LoginResponse refreshToken(RefreshTokenRequest refreshTokenRequest) {
    String refreshToken = refreshTokenRequest.getRefreshToken();
    if (!jwtService.validateToken(refreshToken)) {
      throw new BadCredentialsException("Invalid refresh token");
    }
    String email = jwtService.getEmailFromToken(refreshToken);

    var userDetails = (UserDetailsImpl) userDetailsService.loadUserByUsername(email);

    var token = jwtService.generateAccessToken(userDetails);
    return LoginResponse.builder()
            .accessToken(token)
            .build();
  }
}
