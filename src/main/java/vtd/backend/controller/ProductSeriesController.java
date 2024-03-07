package vtd.backend.controller;


import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import vtd.backend.common.CommonResponse;
import vtd.backend.constant.MessageConstant;
import vtd.backend.service.ProductSeriesService;

import static vtd.backend.constant.ApiEndpoint.BASE_API;

@RestController
@RequestMapping(BASE_API)
@RequiredArgsConstructor
public class ProductSeriesController {

  private final ProductSeriesService productSeriesService;

  @GetMapping("/product-series/get/{name}")
  public ResponseEntity<CommonResponse<Object>> getAllByName(@PathVariable("name") String name) {
    return ResponseEntity.ok(CommonResponse.builder()
                    .isSuccess(true)
                    .message(MessageConstant.FIND_SUCCESS)
                    .data(productSeriesService.getByProductSeriesName(name))
            .build());
  }

  @GetMapping("/product-series/get/products/{name}")
  public ResponseEntity<CommonResponse<Object>> getAllProductByName(@PathVariable("name") String name) {
    return ResponseEntity.ok(CommonResponse.builder()
            .isSuccess(true)
            .message(MessageConstant.FIND_SUCCESS)
            .data(productSeriesService.getAllProductByProductSeriesName(name))
            .build());
  }
}