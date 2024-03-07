package vtd.backend.entity;
import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "products")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Product {
  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "product_id")
  private int productId;

  @Column(name = "product_name")
  private String name;

  private float price;

  private String option;

  @Column(columnDefinition = "TEXT")
  private String imageUrl;

  @Column(columnDefinition = "TEXT")
  private String description;

  @ManyToOne(fetch = FetchType.LAZY)
  @JoinColumn(name = "series_id")
  @JsonBackReference
  private Series series;

  @ManyToOne
  @JoinColumn(name = "product_version_id")
  @JsonBackReference
  private ProductSeries productSeries;

  @OneToMany(mappedBy = "product", fetch = FetchType.LAZY)
  @JsonIgnore
  private List<ProductColor> productColorList = new ArrayList<>();

  @ManyToMany(fetch = FetchType.LAZY)
  @JoinTable(name = "products_images",
          joinColumns = @JoinColumn(name = "product_id"),
          inverseJoinColumns = @JoinColumn(name = "image_id")
  )
  @JsonIgnore
  private List<ImageProduct> imageProductList = new ArrayList<>();

}
