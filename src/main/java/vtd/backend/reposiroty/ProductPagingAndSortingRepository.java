package vtd.backend.reposiroty;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;
import vtd.backend.entity.Product;

@Repository
public interface ProductPagingAndSortingRepository extends PagingAndSortingRepository<Product, Integer> {

}
