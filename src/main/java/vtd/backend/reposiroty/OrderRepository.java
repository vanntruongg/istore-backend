package vtd.backend.reposiroty;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import vtd.backend.entity.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order, Integer> {
}
