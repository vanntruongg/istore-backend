package vtd.backend.entity.dto;

import lombok.Getter;

import java.util.List;

@Getter
public class UserDto {
  private String email;
  private String password;
  private List<Integer> roles;
}
