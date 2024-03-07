package vtd.backend.reposiroty;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vtd.backend.entity.ProductColor;

@Repository
public interface ProductColorRepository extends JpaRepository<ProductColor, Integer> {
}
