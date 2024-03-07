package vtd.backend.entity;

import jakarta.persistence.*;
import lombok.*;


@Entity
@Table(name = "cart_details")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class CartDetail {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "cart_detail_id")
  private int cartDetailId;

  @ManyToOne
  @JoinColumn(name = "cart_id")
  private Cart cart;

  private int quantity;

  @ManyToOne
  @JoinColumn(name = "product_id")
  private Product product;
}
