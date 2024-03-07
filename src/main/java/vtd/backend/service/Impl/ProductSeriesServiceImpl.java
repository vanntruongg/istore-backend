package vtd.backend.service.Impl;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import vtd.backend.entity.Category;
import vtd.backend.entity.Product;
import vtd.backend.entity.ProductSeries;
import vtd.backend.reposiroty.ProductSeriesRepository;
import vtd.backend.service.ProductSeriesService;

import java.util.Collections;
import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductSeriesServiceImpl implements ProductSeriesService {

  private final ProductSeriesRepository productSeriesRepository;

  @Override
  public ProductSeries getByProductSeriesName(String name) {
    var productSeries =  productSeriesRepository.findProductSeriesByProductSeriesName(name);
    if (productSeries == null) {
      throw new RuntimeException("Can't found product series with name: " + name);
    }
    return productSeries;
  }

  @Override
  public List<Product> getAllProductByProductSeriesName(String name) {
    ProductSeries productSeries = productSeriesRepository.findProductSeriesByProductSeriesName(name);
    if(productSeries != null) {
      return productSeries.getProductList();
    }
    return Collections.emptyList();
  }
}
