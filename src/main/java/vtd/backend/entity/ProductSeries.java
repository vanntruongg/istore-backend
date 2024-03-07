package vtd.backend.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "product_series")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ProductSeries {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "product_series_id")
  private int productSeriesId;

  @Column(name = "product_series_name")
  private String productSeriesName;

  @ManyToOne
  @JoinColumn(name = "series")
  @JsonBackReference
  private Series series;

  @OneToMany(mappedBy = "productSeries")
  @JsonIgnore
  private List<Product> productList = new ArrayList<>();
}
