package vtd.backend.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import vtd.backend.common.CommonResponse;
import vtd.backend.constant.MessageConstant;
import vtd.backend.service.ProductService;

import static vtd.backend.constant.ApiEndpoint.*;

@RestController
@RequestMapping(BASE_API)
@RequiredArgsConstructor
public class ProductController {

  private final ProductService productService;

  @GetMapping(PRODUCT_GET_ALL)
  public ResponseEntity<CommonResponse<Object>> getAllProduct(
          @RequestParam(required = false, defaultValue = "0") int pageNo,
          @RequestParam(required = false, defaultValue = "10") int pageSize,
          @RequestParam(required = false) String sortBy,
          @RequestParam(required = false) String sortDirection,
          @RequestParam(required = false) Float minPrice,
          @RequestParam(required = false) Float maxPrice,
          @RequestParam(required = false) String color,
          @RequestParam(required = false) String option
  ) {
    return ResponseEntity.ok(CommonResponse.builder()
            .isSuccess(true)
            .message(MessageConstant.FIND_SUCCESS)
            .data(productService.getAllProduct(pageNo, pageSize, sortBy, sortDirection, minPrice, maxPrice, color, option))
            .build()
    );
  }

  @GetMapping(PRODUCT_GET_BY_ID)
  public ResponseEntity<CommonResponse<Object>> getProductById(@PathVariable("id") int id) {
    return ResponseEntity.ok(CommonResponse.builder()
            .isSuccess(true)
            .message(MessageConstant.FIND_SUCCESS)
            .data(productService.findProductById(id))
            .build()
    );
  }

  @GetMapping(PRODUCT_GET_BY_NAME)
  public ResponseEntity<CommonResponse<Object>> getProductByName(
          @PathVariable("name") String name,
          @RequestParam(value = "limit", required = false) int limit
  ) {
    return ResponseEntity.ok(CommonResponse.builder()
            .isSuccess(true)
            .message(MessageConstant.FIND_SUCCESS)
            .data(productService.findProductByName(name, limit))
            .build()
    );
  }

  @GetMapping("/product/get/images-colors/{id}")
  public ResponseEntity<CommonResponse<Object>> getAllImageAndColorProductById(
          @PathVariable("id") int id
  ) {
    return ResponseEntity.ok(CommonResponse.builder()
            .isSuccess(true)
            .message(MessageConstant.FIND_SUCCESS)
            .data(productService.getAllImageAndColorByProductId(id))
            .build()
    );
  }

  @GetMapping("/product/get/category/{categoryName}")
  public ResponseEntity<CommonResponse<Object>> getProductsByCategoryName(
          @PathVariable("categoryName") String categoryName,
          @RequestParam(required = false, defaultValue = "0") int pageNo,
          @RequestParam(required = false, defaultValue = "10") int pageSize,
          @RequestParam(required = false, defaultValue = "productId") String sortBy,
          @RequestParam(required = false, defaultValue = "asc") String sortDirection,
          @RequestParam(required = false) Float minPrice,
          @RequestParam(required = false) Float maxPrice,
          @RequestParam(required = false) String color,
          @RequestParam(required = false) String option
  ) {
    return ResponseEntity.ok(CommonResponse.builder()
            .isSuccess(true)
            .message(MessageConstant.FIND_SUCCESS)
            .data(productService.getProductsByCategoryName(categoryName, pageNo, pageSize, sortBy, sortDirection, minPrice, maxPrice, color, option))
            .build()
    );
  }

  @GetMapping("/product/get/series/{seriesName}")
  public ResponseEntity<CommonResponse<Object>> getProductsBySeriesName(
          @PathVariable("seriesName") String seriesName,
          @RequestParam(required = false, defaultValue = "0") int pageNo,
          @RequestParam(required = false, defaultValue = "10") int pageSize,
          @RequestParam(required = false, defaultValue = "productId") String sortBy,
          @RequestParam(required = false, defaultValue = "asc") String sortDirection,
          @RequestParam(required = false) Float minPrice,
          @RequestParam(required = false) Float maxPrice,
          @RequestParam(required = false) String color,
          @RequestParam(required = false) String option
  ) {
    return ResponseEntity.ok(CommonResponse.builder()
            .isSuccess(true)
            .message(MessageConstant.FIND_SUCCESS)
            .data(productService.getProductsBySeriesName(seriesName, pageNo, pageSize, sortBy, sortDirection, minPrice, maxPrice, color, option))
            .build()
    );
  }

  @GetMapping("/product/get/series-version/{seriesVersion}")
  public ResponseEntity<CommonResponse<Object>> getProductsBySeriesVersionName(
          @PathVariable("seriesVersion") String seriesVersion,
          @RequestParam(required = false, defaultValue = "0") int pageNo,
          @RequestParam(required = false, defaultValue = "10") int pageSize,
          @RequestParam(required = false, defaultValue = "productId") String sortBy,
          @RequestParam(required = false, defaultValue = "asc") String sortDirection,
          @RequestParam(required = false) Float minPrice,
          @RequestParam(required = false) Float maxPrice,
          @RequestParam(required = false) String color,
          @RequestParam(required = false) String option
  ) {
    return ResponseEntity.ok(CommonResponse.builder()
            .isSuccess(true)
            .message(MessageConstant.FIND_SUCCESS)
            .data(productService.getProductsBySeriesVersionName(seriesVersion, pageNo, pageSize, sortBy, sortDirection, minPrice, maxPrice, color, option))
            .build()
    );
  }
}
