package vtd.backend.reposiroty;

import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import vtd.backend.entity.ImageProduct;
import vtd.backend.entity.Product;

import java.util.List;
import java.util.Set;

@Repository
public interface ProductRepository extends JpaRepository<Product, Integer>, JpaSpecificationExecutor<Product> {


  List<Product> findProductByNameContains(String name);

//  @Query("SELECT p " +
//          "FROM Product p " +
//          "JOIN p.series s " +
//          "JOIN s.category c " +
//          "WHERE c.categoryName = :name")
//  Page<Product> findProductsByCategoryName(@Param("name") String name);
//
//  @Query("SELECT p " +
//          "FROM Product p " +
//          "JOIN p.series s " +
//          "WHERE s.seriesName = :name")
//  Page<Product> findProductsBySeriesName(@Param("name") String Name);
//
//  @Query("SELECT p " +
//          "FROM Product p " +
//          "JOIN p.productSeries s " +
//          "WHERE s.productSeriesName = :name")
//  Page<Product> findProductsBySeriesVersionName(@Param("name") String Name);

//  List<Product> findImageProductListByProductId(int id);

//  List<Product> getProductsByCategory(int categoryId);
}
