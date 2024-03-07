package vtd.backend.service.Impl;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;
import vtd.backend.common.QueryHelper;
import vtd.backend.entity.Product;
import vtd.backend.reposiroty.ProductPagingAndSortingRepository;
import vtd.backend.reposiroty.ProductRepository;
import vtd.backend.service.ProductService;
import vtd.backend.specification.ProductSpecification;

import java.util.*;
import java.util.stream.Collectors;

@Service
@Slf4j
@RequiredArgsConstructor
public class ProductServiceImpl implements ProductService {

  private final ProductRepository productRepository;
//  private final ProductPagingAndSortingRepository productPagingAndSortingRepository;

  private final QueryHelper queryHelper;
  private final ProductSpecification productSpecification;
  @Override
  public Page<Product> getAllProduct(int pageNo, int pageSize, String sortBy, String sortDirection, Float minPrice, Float maxPrice, String color, String option) {
    Specification<Product> spec = Specification.where(null);
    return queryHelper.findAllWithFilterAndSort(productRepository, spec, minPrice, maxPrice, color, option, pageNo, pageSize, sortBy, sortDirection);
  }

  @Override
  public Product findProductById(int id) {
    Optional<Product> product = productRepository.findById(id);
    if (product.isEmpty()) {
      throw new RuntimeException("Product not found with id: " + id);
    }
    return product.get();
  }
  @Override
  public List<Product> findProductByName(String name, int limit) {
    List<Product> listProductFilteredByName = productRepository.findProductByNameContains(name);
    if (!listProductFilteredByName.isEmpty() && limit > 0) {
      listProductFilteredByName = listProductFilteredByName.stream().limit(limit).collect(Collectors.toList());
    } else if (listProductFilteredByName.isEmpty()) {
      throw new RuntimeException("Product not found with name: " + name);
    }
    return listProductFilteredByName;
  }
  @Override
  public List<List<?>> getAllImageAndColorByProductId(int id) {
    List<List<?>> imageAndColorList = new ArrayList<>();
    Optional<Product> product = productRepository.findById(id);
    if (product.isPresent()) {
      imageAndColorList.add(product.get().getImageProductList());
      imageAndColorList.add(product.get().getProductColorList());
      return imageAndColorList;
    }
    return Collections.emptyList();
  }

  @Override
  public Page<Product> getProductsByCategoryName(
          String categoryName,
          int pageNo, int pageSize,
          String sortBy, String sortDirection,
          Float minPrice, Float maxPrice,
          String color,
          String option
  ) {
    Specification<Product> spec = productSpecification.hasCategory(categoryName);
    return queryHelper.findAllWithFilterAndSort(productRepository, spec, minPrice, maxPrice, color, option, pageNo, pageSize, sortBy, sortDirection);
  }

  @Override
  public Page<Product> getProductsBySeriesName(
          String seriesName,
          int pageNo, int pageSize,
          String sortBy, String sortDirection,
          Float minPrice, Float maxPrice,
          String color,
          String option
  ) {
    Specification<Product> spec = productSpecification.hasSeries(seriesName);
    return queryHelper.findAllWithFilterAndSort(productRepository, spec, minPrice, maxPrice, color, option, pageNo, pageSize, sortBy, sortDirection);
  }

  @Override
  public Page<Product> getProductsBySeriesVersionName(
          String seriesVersion,
          int pageNo, int pageSize,
          String sortBy, String sortDirection,
          Float minPrice, Float maxPrice,
          String color, String option
  ) {
    Specification<Product> spec = productSpecification.hasSeriesVersion(seriesVersion);
    return queryHelper.findAllWithFilterAndSort(productRepository, spec, minPrice, maxPrice, color, option, pageNo, pageSize, sortBy, sortDirection);
  }

}
