package vtd.backend.service;

import vtd.backend.entity.User;
import vtd.backend.entity.dto.UserDto;

import java.util.List;

public interface UserService {
  User createUser(UserDto userDTO);
  List<User> getAllUser();
  User findUserByEmail(String email);

  User findUserById(int id);
}
