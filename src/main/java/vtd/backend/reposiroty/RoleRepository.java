package vtd.backend.reposiroty;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vtd.backend.entity.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Integer> {
}
