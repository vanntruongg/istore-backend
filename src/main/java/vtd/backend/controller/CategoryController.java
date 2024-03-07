package vtd.backend.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import vtd.backend.common.CommonResponse;
import vtd.backend.constant.MessageConstant;
import vtd.backend.service.CategoryService;

import static vtd.backend.constant.ApiEndpoint.BASE_API;

@RestController
@RequestMapping(BASE_API)
@RequiredArgsConstructor
public class CategoryController {

  private final CategoryService categoryService;

  @GetMapping("/category/get-all")
  public ResponseEntity<CommonResponse<Object>> getAll() {
    return ResponseEntity.ok(CommonResponse.builder()
            .isSuccess(true)
            .message(MessageConstant.FIND_SUCCESS)
            .data(categoryService.getAll())
            .build());
  }

  @GetMapping("/category/get/name/{name}")
  public ResponseEntity<CommonResponse<Object>> getByName(@PathVariable("name") String name) {
    return ResponseEntity.ok(CommonResponse.builder()
            .isSuccess(true)
            .message(MessageConstant.FIND_SUCCESS)
            .data(categoryService.getByName(name))
            .build());
  }
}
