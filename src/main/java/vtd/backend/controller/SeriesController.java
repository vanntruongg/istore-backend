package vtd.backend.controller;

import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import vtd.backend.common.CommonResponse;
import vtd.backend.constant.MessageConstant;
import vtd.backend.service.SeriesService;

import static vtd.backend.constant.ApiEndpoint.BASE_API;

@RestController
@RequestMapping(BASE_API)
@RequiredArgsConstructor
public class SeriesController {

  private final SeriesService seriesService;

  @GetMapping("/series/get-all")
  public ResponseEntity<CommonResponse<Object>> getAll() {
    return ResponseEntity.ok(CommonResponse.builder()
                    .isSuccess(true)
                    .message(MessageConstant.FIND_SUCCESS)
                    .data(seriesService.getAll())
            .build());
  }

  @GetMapping("/series/get/name/{name}")
  public ResponseEntity<CommonResponse<Object>> getSeriesByName(@PathVariable("name") String name) {
    return ResponseEntity.ok(CommonResponse.builder()
            .isSuccess(true)
            .message(MessageConstant.FIND_SUCCESS)
            .data(seriesService.getBySeriesName(name))
            .build());
  }

  @GetMapping("/series/get/category/{name}")
  public ResponseEntity<CommonResponse<Object>> getSeriesByCategoryName(@PathVariable("name") String name) {
    return ResponseEntity.ok(CommonResponse.builder()
            .isSuccess(true)
            .message(MessageConstant.FIND_SUCCESS)
            .data(seriesService.getSeriesByCategoryName(name))
            .build());
  }
}
