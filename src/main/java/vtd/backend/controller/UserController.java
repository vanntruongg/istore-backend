package vtd.backend.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;
import vtd.backend.common.CommonResponse;
import vtd.backend.constant.MessageConstant;
import vtd.backend.entity.dto.UserDto;
import vtd.backend.service.UserService;

import static vtd.backend.constant.ApiEndpoint.*;

@RestController
@RequestMapping(BASE_API)
@RequiredArgsConstructor
public class UserController {

  private final UserService userService;

  @PostMapping(USER_CREATE)
  public ResponseEntity<CommonResponse<Object>> createUser(@RequestBody UserDto userDTO) {
    return ResponseEntity.ok(CommonResponse
            .builder()
            .isSuccess(true)
            .message(MessageConstant.CREATE_USER_SUCCESS)
            .data(userService.createUser(userDTO))
            .build()
    );
  }

  @GetMapping(USER_GET_ALL)
  public ResponseEntity<CommonResponse<Object>> getAllUser() {
    return ResponseEntity.ok(CommonResponse
            .builder()
            .isSuccess(true)
            .message(MessageConstant.FIND_SUCCESS)
            .data(userService.getAllUser())
            .build()
    );
  }

  @GetMapping(USER_GET_BY_ID)
  public ResponseEntity<CommonResponse<Object>> getUserById(@PathVariable("id") int id) {
    return ResponseEntity.ok(CommonResponse
            .builder()
            .isSuccess(true)
            .message(MessageConstant.FIND_SUCCESS)
            .data(userService.findUserById(id))
            .build()
    );
  }

}
