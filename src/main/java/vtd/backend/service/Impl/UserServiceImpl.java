package vtd.backend.service.Impl;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import vtd.backend.entity.Role;
import vtd.backend.entity.User;
import vtd.backend.entity.dto.UserDto;
import vtd.backend.reposiroty.UserRepository;
import vtd.backend.service.RoleService;
import vtd.backend.service.UserService;

import java.util.List;
import java.util.Optional;

@Service
@Slf4j
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
  private final UserRepository userRepository;
  private final RoleService roleService;
  private final PasswordEncoder passwordEncoder;

  @Override
  public User createUser(UserDto userDTO) {
    Optional<User> userExist = userRepository.findUserByEmail(userDTO.getEmail());
    if (userExist.isPresent()) {
      throw new RuntimeException("Email already exists");
    }
    List<Role> roles = roleService.findAllRoleByIds(userDTO.getRoles());
    User userSave = User.builder()
            .email(userDTO.getEmail())
            .password(passwordEncoder.encode(userDTO.getPassword()))
            .roles(roles)
            .build();
    userRepository.save(userSave);
    return userSave;
  }

  @Override
  public List<User> getAllUser() {
    return userRepository.findAll();
  }

  @Override
  public User findUserByEmail(String email) {
    Optional<User> user = userRepository.findUserByEmail(email);
    if (user.isEmpty()) {
      throw new RuntimeException("User not found with email: " + email);
    }
    return user.get();
  }

  @Override
  public User findUserById(int id) {
    return userRepository.findById(id).orElseThrow(() -> new RuntimeException("Can't found user with id: " + id));
  }
}
