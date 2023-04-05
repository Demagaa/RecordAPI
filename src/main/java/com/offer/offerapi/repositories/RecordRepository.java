package com.offer.offerapi.repositories;

import com.offer.offerapi.models.Record;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * @author Aleksei Chursin
 */
@Repository
public interface RecordRepository extends CrudRepository<Record, Long> {
    /* Custom methods for working with database data */
    Page<Record> findAllByOfferIdAndClientIdOrderByLastSeenDesc(Long client_id, Long offer_id, Pageable pageable);

    Page<Record> findAll();
    Page<Record> findAllByClientId(Long client_id, Pageable pageable);
}
