package vtd.backend.reposiroty;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vtd.backend.entity.ProductSeries;

import java.util.List;

@Repository
public interface ProductSeriesRepository extends JpaRepository<ProductSeries, Integer> {
  ProductSeries findProductSeriesByProductSeriesName(String name);
  List<ProductSeries> findAllByProductSeriesId(int id);
}
