package lk.chathurabuddi.sahanadara.api.repository;

import java.util.List;

import lk.chathurabuddi.sahanadara.api.entity.ReliefRequest;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface ReliefRequestRepository extends JpaRepository<ReliefRequest, Long> {

    @Query("SELECT r FROM ReliefRequest r WHERE (:completed IS NULL OR r.completed = :completed)")
    List<ReliefRequest> findAll(@Param("completed") Boolean completed);
}
