package vtd.backend.reposiroty;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vtd.backend.entity.ImageProduct;

@Repository
public interface ImageProductRepository extends JpaRepository<ImageProduct, Integer> {

}
