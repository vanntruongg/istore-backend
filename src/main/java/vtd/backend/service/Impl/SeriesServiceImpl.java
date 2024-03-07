package vtd.backend.service.Impl;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import vtd.backend.entity.Series;
import vtd.backend.reposiroty.SeriesRepository;
import vtd.backend.service.SeriesService;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class SeriesServiceImpl implements SeriesService {

  private final SeriesRepository seriesRepository;

  @Override
  public List<Series> getAll() {
    return seriesRepository.findAll();
  }

  @Override
  public Series getBySeriesName(String name) {
    return seriesRepository.findBySeriesName(name);
  }

  @Override
  public List<Series> getSeriesByCategoryName(String name) {
    List<Series> series = seriesRepository.findSeriesByCategory(name);
    if (series.isEmpty()) {
      throw  new RuntimeException("Series is empty with category: " + name);
    }
    return series;
  }
}
