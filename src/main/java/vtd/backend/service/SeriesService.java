package vtd.backend.service;

import vtd.backend.entity.Series;

import java.util.List;

public interface SeriesService {

  List<Series> getAll();
  Series getBySeriesName(String name);

  List<Series> getSeriesByCategoryName(String name);
}
