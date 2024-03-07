package vtd.backend.service;

import vtd.backend.entity.Role;

import java.util.List;

public interface RoleService {
  List<Role> getAllRole();
  Role findRoleById(int id);
  List<Role> findAllRoleByIds(List<Integer> ids);
}
