package vtd.backend.service;

import vtd.backend.entity.Product;
import vtd.backend.entity.ProductSeries;

import java.util.List;

public interface ProductSeriesService {
  ProductSeries getByProductSeriesName(String name);
  List<Product> getAllProductByProductSeriesName(String name);
}
