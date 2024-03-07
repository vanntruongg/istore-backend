package vtd.backend.service.Impl;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import vtd.backend.entity.Role;
import vtd.backend.reposiroty.RoleRepository;
import vtd.backend.service.RoleService;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class RoleServiceImpl implements RoleService {

  private final RoleRepository roleRepository;
  @Override
  public List<Role> getAllRole() {
    return null;
  }

  @Override
  public Role findRoleById(int id) {
    return null;
  }

  @Override
  public List<Role> findAllRoleByIds(List<Integer> ids) {
    return roleRepository.findAllById(ids);
  }
}
