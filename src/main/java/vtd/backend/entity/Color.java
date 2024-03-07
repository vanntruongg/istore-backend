package vtd.backend.entity;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "colors")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Color {

  @Id
  @GeneratedValue
  @Column(name = "color_id")
  private int colorId;

  @Column(name = "color_name")
  private String colorName;

}
