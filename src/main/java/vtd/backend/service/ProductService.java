package vtd.backend.service;

import org.springframework.data.domain.Page;
import vtd.backend.entity.ImageProduct;
import vtd.backend.entity.Product;
import vtd.backend.entity.ProductColor;

import java.util.ArrayList;
import java.util.List;

public interface ProductService {
  Page<Product> getAllProduct(
          int pageNo,
          int pageSize,
          String sortBy,
          String sortDirection,
          Float minPrice,
          Float maxPrice,
          String color,
          String option
  );

  Product findProductById(int id);

  List<Product> findProductByName(String name, int limit);
  List<List<?>> getAllImageAndColorByProductId(int id);
  Page<Product> getProductsByCategoryName(
          String categoryName,
          int pageNo, int pageSize,
          String sortBy, String sortDirection,
          Float minPrice, Float maxPrice,
          String color,
          String option
  );
  Page<Product> getProductsBySeriesName(
          String seriesName,
          int pageNo, int pageSize,
          String sortBy, String sortDirection,
          Float minPrice, Float maxPrice,
          String color,
          String option
  );
  Page<Product> getProductsBySeriesVersionName(
          String seriesVersion,
          int pageNo, int pageSize,
          String sortBy, String sortDirection,
          Float minPrice, Float maxPrice,
          String color, String option
  );
}
