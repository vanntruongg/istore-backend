package vtd.backend.service;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vtd.backend.entity.dto.LoginRequest;
import vtd.backend.entity.dto.LoginResponse;
import vtd.backend.entity.dto.RefreshTokenRequest;

public interface AuthService {

  LoginResponse login(LoginRequest loginRequest);
  boolean logout(HttpServletRequest request, HttpServletResponse response);
  LoginResponse refreshToken(RefreshTokenRequest refreshTokenRequest);
}
