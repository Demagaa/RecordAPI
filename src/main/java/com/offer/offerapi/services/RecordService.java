package com.offer.offerapi.services;

import com.offer.offerapi.models.Record;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @author Aleksei Chursin
 */

@Service
@Transactional
public interface RecordService {
    /* Methods for working with database data */
    void save(Record record);

    Page<Record> getSummary(Long client_id, Pageable pageable);

    Page<Record> findOfferByClientId(Long client_id, Long offer_id, Pageable pageable);

    Page<Record> getAll(Pageable paging);
}

