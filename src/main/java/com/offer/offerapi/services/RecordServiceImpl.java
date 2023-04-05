package com.offer.offerapi.services;

import com.offer.offerapi.models.Record;
import com.offer.offerapi.repositories.RecordRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.ErrorResponseException;

/**
 * @author Aleksei Chursin
 */

@Service
@Transactional
public class RecordServiceImpl implements RecordService {
    private RecordRepository recordRepository;
    @Autowired
    public void setRecordRepository(RecordRepository recordRepository) {
        this.recordRepository = recordRepository;
    }

    /* Methods for working with database data */
    public void save(Record record){
        recordRepository.save(record);
    }

    public Page<Record> getSummary(Long client_id, Pageable pagable){
        return get(client_id, pagable);
    }

    public Page<Record> findOfferByClientId(Long client_id, Long offer_id, Pageable pageable){
        return recordRepository.findAllByOfferIdAndClientIdOrderByLastSeenDesc(client_id, offer_id, pageable);
    }

    public Page<Record> getAll(Pageable paging) {
        return recordRepository.findAll();
    }

    public Page<Record> get(Long client_id, Pageable pageable){
        return recordRepository.findAllByClientId(client_id, pageable);
    }
}
