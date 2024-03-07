package vtd.backend.specification;

import jakarta.persistence.criteria.Join;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Component;
import vtd.backend.entity.*;

@Component
public class ProductSpecification {

  public Specification<Product> hasColor(String colorName) {
    return (root, query, criteriaBuilder) -> {
      Join<Product, ProductColor> productColorJoin = root.join("productColorList");
      Join<ProductColor, Color> colorJoin = productColorJoin.join("color");
      return criteriaBuilder.equal(colorJoin.get("colorName"), colorName);
    };
  }

  public Specification<Product> hasOption(String option) {
    return (root, query, criteriaBuilder) -> criteriaBuilder.equal(root.get("option"), option);
  }

  public Specification<Product> hasPriceBetween(float minPrice, float maxPrice) {
    return (root, query, criteriaBuilder) -> criteriaBuilder.between(root.get("price"), minPrice, maxPrice);
  }

  public Specification<Product> hasCategory(String categoryName) {
    return (root, query, criteriaBuilder) -> {
      Join<Product, Series> seriesJoin = root.join("series");
      Join<Series, Category> categoryJoin = seriesJoin.join("category");
      return criteriaBuilder.equal(categoryJoin.get("categoryName"), categoryName);
    };
  }

  public Specification<Product> hasSeries(String seriesName) {
    return (root, query, criteriaBuilder) -> {
      Join<Product, Series> seriesJoin = root.join("series");
      return criteriaBuilder.equal(seriesJoin.get("seriesName"), seriesName);
    };
  }

  public Specification<Product> hasSeriesVersion(String seriesVersion) {
    return (root, query, criteriaBuilder) -> {
      Join<Product, ProductSeries> seriesVersionJoin = root.join("productSeries");
      return criteriaBuilder.equal(seriesVersionJoin.get("productSeriesName"), seriesVersion);
    };
  }
}
