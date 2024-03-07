package vtd.backend.entity;


import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.*;
import lombok.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Table(name = "images_product")
public class ImageProduct {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private int id;

  @Column(name = "img_url")
  private String imgUrl;

  @ManyToMany(mappedBy = "imageProductList", fetch = FetchType.LAZY)
  @JsonIgnore
  private List<Product> productList = new ArrayList<>();
}
