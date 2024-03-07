package vtd.backend.reposiroty;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vtd.backend.entity.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer> {
  Category findByCategoryName(String name);
}
