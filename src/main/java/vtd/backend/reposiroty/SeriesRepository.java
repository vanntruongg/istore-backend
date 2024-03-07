package vtd.backend.reposiroty;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import vtd.backend.entity.Series;

import java.util.List;

@Repository
public interface SeriesRepository extends JpaRepository<Series, Integer> {

  Series findBySeriesName(String name);

  @Query("SELECT s " +
          "FROM Series s " +
          "JOIN s.category c " +
          "WHERE c.categoryName = :name ")
  List<Series> findSeriesByCategory(String name);
}
