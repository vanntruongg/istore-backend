package vtd.backend.common;

import lombok.RequiredArgsConstructor;
import org.springframework.boot.autoconfigure.data.web.SpringDataWebProperties;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Component;
import vtd.backend.entity.Product;
import vtd.backend.specification.ProductSpecification;

@Component
@RequiredArgsConstructor
public class QueryHelper {

  private final ProductSpecification productSpecification;

  public Page<Product> findAllWithFilterAndSort(
          JpaSpecificationExecutor<Product> repository,
          Specification<Product> specification,
          Float minPrice,
          Float maxPrice,
          String color,
          String option,
          int pageNo,
          int pageSize,
          String sortBy,
          String sortDirection
  ) {
    Specification<Product> finalSpec = Specification.where(specification);

    if (minPrice != null && maxPrice != null) {
      finalSpec = finalSpec.and(productSpecification.hasPriceBetween(minPrice, maxPrice));
    }
    if (color != null) {
      finalSpec = finalSpec.and(productSpecification.hasColor(color));
    }
    if (option != null) {
      finalSpec = finalSpec.and(productSpecification.hasOption(option));
    }

    Sort.Direction direction = sortDirection.equalsIgnoreCase("desc") ? Sort.Direction.DESC : Sort.Direction.ASC;
    PageRequest pageRequest = PageRequest.of(pageNo, pageSize, Sort.by(direction, sortBy));

    return repository.findAll(finalSpec, pageRequest);

  }

}
