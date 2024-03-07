package vtd.backend.security;

import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

@Configuration
@EnableWebSecurity
@EnableMethodSecurity
@RequiredArgsConstructor
public class SecurityConfig {
  private final AuthEntryPointJwt authEntryPointJwt;
  private final JwtService jwtService;
  private final UserDetailsServiceImpl userDetailsService;

  @Bean
  public AuthFilterService authenticationFilterToken() {
    return new AuthFilterService(jwtService, userDetailsService);
  }

  @Bean
  public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
    http.cors(Customizer.withDefaults())
            .csrf(AbstractHttpConfigurer::disable)
            .exceptionHandling(exception -> exception
                    .authenticationEntryPoint(authEntryPointJwt)
                    .accessDeniedHandler(((request, response, accessDeniedException) -> {
                      response.setStatus(HttpStatus.FORBIDDEN.value());
                    }))
            )
            .authorizeHttpRequests(auth -> auth
//                    .requestMatchers(
//                            BASE_API + PRODUCT_GET_ALL,
//                            "/vtd/product/name/{name}",
//                            BASE_API + PRODUCT_GET_BY_ID,
//                            BASE_API + AUTH_LOGIN).permitAll()
//                    .requestMatchers(BASE_API + USER_CREATE,
//                            BASE_API + USER_GET_ALL).hasRole(ADMIN)
                    .anyRequest().permitAll()
            )
            .sessionManagement(session ->
                    session.sessionCreationPolicy(SessionCreationPolicy.STATELESS));
    http.addFilterBefore(authenticationFilterToken(), UsernamePasswordAuthenticationFilter.class);
    return http.build();
  }

  @Bean
  public PasswordEncoder passwordEncoder() {
    return new BCryptPasswordEncoder();
  }

  @Bean
  public AuthenticationManager authenticationManager(AuthenticationConfiguration authenticationConfiguration) throws Exception {
    return authenticationConfiguration.getAuthenticationManager();
  }

}
