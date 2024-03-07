package vtd.backend.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "orders")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Order {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  @Column(name = "order_id")
  private int orderId;

  @Column(name = "delivery_address")
  private String deliveryAddress;

  @Column(name = "total_price")
  private float totalPrice;

  @ManyToOne
  @JoinColumn(name = "user_id")
  private User user;

}
