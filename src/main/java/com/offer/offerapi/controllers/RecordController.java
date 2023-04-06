package com.offer.offerapi.controllers;

import com.offer.offerapi.models.Record;
import com.offer.offerapi.services.RecordService;
import jakarta.validation.ConstraintViolationException;
import jakarta.validation.ValidationException;
import jakarta.validation.constraints.Positive;
import jakarta.validation.constraints.PositiveOrZero;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.method.annotation.MethodArgumentTypeMismatchException;

import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * @author Aleksei Chursin
 */

@RestController
@RequestMapping("/offers")
@Validated
public class RecordController {
    @Autowired
    private RecordService recordService; /* Service for data access */

    /* Function takes client_id and offer_id as Params input,
     * creates Record object and stores it in database */
    @PostMapping("/") /* Spring REST annotation */
    public ResponseEntity recordOfferSeen(@Positive @RequestParam Long client_id,
                                          @Positive @RequestParam Long offer_id) { /* Validation of input data */
        recordService.save(new Record(client_id, offer_id, java.time.LocalDateTime.now()));
        return new ResponseEntity(HttpStatus.CREATED);
    }

    /* Function takes client_id (page and size optionally) as input
     * and returns JSON response with records containing client_id */
    @GetMapping("/get/{client_id}")     /* Spring REST annotation */
    public ResponseEntity getSummary(@Positive @PathVariable Long client_id,
                                     @PositiveOrZero @RequestParam(defaultValue = "0") int page,
                                     @Positive @RequestParam(defaultValue = "3") int size) { /* Validation of input data */
        try {
            Pageable paging = PageRequest.of(page, size);  /* Paging output */
            Page<Record> pageRecords;
            pageRecords = recordService.getSummary(client_id, paging);
            List<Record> records = pageRecords.getContent();

            Map<String, Object> response = new HashMap<>();
            response.put("records", records);
            response.put("currentPage", pageRecords.getNumber());
            response.put("totalItems", pageRecords.getTotalElements());
            response.put("totalPages", pageRecords.getTotalPages());

            return new ResponseEntity<>(response, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }


    /* Function takes client_id and offer_id (page and size optionally) as input
    * and returns JSON response with records containing both IDs */
    @GetMapping("/get/{client_id}/{offer_id}")  /* Spring REST annotation */
    public ResponseEntity<Map> getRecordByOfferId(@Positive @PathVariable Long client_id,
                                                  @Positive @PathVariable Long offer_id,
                                                  @PositiveOrZero @RequestParam(defaultValue = "0") int page,
                                                  @Positive @RequestParam(defaultValue = "1", required = false) int size) { /* Validation of input data */

        try {
            Pageable paging = PageRequest.of(page, size);   /* Paging output */
            Page<Record> pageRecords;
            pageRecords = recordService.findOfferByClientId(client_id, offer_id, paging);
            List<Record> records = pageRecords.getContent();

            Map<String, Object> response = new HashMap<>();
            response.put("records", records);
            response.put("currentPage", pageRecords.getNumber());
            response.put("totalItems", pageRecords.getTotalElements());
            response.put("totalPages", pageRecords.getTotalPages());

            return new ResponseEntity<>(response, HttpStatus.OK);
        } catch (Exception e) {
            return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }
    /* Validation failing handing */
    @ExceptionHandler(ValidationException.class)
    ResponseEntity exceptionHandler(ValidationException exception) {
        return ResponseEntity.badRequest().body("Validation failed: " + exception.getMessage());
    }

    @ExceptionHandler(ConstraintViolationException.class)
    public ResponseEntity handleConstraintViolationException(ConstraintViolationException exception) {
        return ResponseEntity.badRequest().body("Validation failed: " + exception.getMessage());
    }

    @ExceptionHandler(MethodArgumentTypeMismatchException.class)
    public ResponseEntity handleMethodArgumentTypeMismatchException() {
        return ResponseEntity.badRequest().body("Validation failed: only positive integer values are allowed");
    }

    @ExceptionHandler(DataIntegrityViolationException.class)
    public ResponseEntity handleDataIntegrityViolationException() {
        return ResponseEntity.badRequest().body("Client of offer not existing");
    }
}


