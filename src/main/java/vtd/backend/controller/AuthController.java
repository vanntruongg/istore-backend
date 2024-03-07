package vtd.backend.controller;

import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import vtd.backend.common.CommonResponse;
import vtd.backend.entity.dto.LoginRequest;
import vtd.backend.service.AuthService;

import static vtd.backend.constant.ApiEndpoint.AUTH_LOGIN;
import static vtd.backend.constant.ApiEndpoint.BASE_API;

@RestController
@RequestMapping(BASE_API)
@RequiredArgsConstructor
public class AuthController {

  private final AuthService authService;

  @PostMapping(AUTH_LOGIN)
  public ResponseEntity<CommonResponse<Object>> login(@RequestBody @Valid LoginRequest loginRequest) {
    return ResponseEntity.ok().body(CommonResponse.builder()
            .isSuccess(true)
            .data(authService.login(loginRequest))
            .message("Login Successfully")
            .build()
    );
  }
}
