package vtd.backend.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "series")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Series {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "series_id")
  private int seriesId;

  @Column(name = "series_name")
  private String seriesName;

  @ManyToOne
  @JoinColumn(name = "category_id")
  @JsonBackReference
  private Category category;

  @OneToMany(mappedBy = "series")
  @JsonIgnore
  private List<ProductSeries> productSeriesList = new ArrayList<>();

  @OneToMany(mappedBy = "series")
  @JsonIgnore
  private List<Product> productList = new ArrayList<>();
}
