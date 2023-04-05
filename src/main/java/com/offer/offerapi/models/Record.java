package com.offer.offerapi.models;

import jakarta.persistence.*;
import jakarta.validation.Valid;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;
import org.hibernate.annotations.CacheConcurrencyStrategy;



import java.time.LocalDateTime;

/**
 * @author Aleksei Chursin
 */

/*Cacheable POJO Class */
@Entity
@Cacheable
@org.hibernate.annotations.Cache(usage = CacheConcurrencyStrategy.READ_ONLY)
@Table(name = "record")
public class Record {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "record_seq")
    @SequenceGenerator(name="record_seq", sequenceName = "record_seq", allocationSize = 1)
    private Long id;

    @Column(name="clientId")
    @Positive
    private Long clientId;

    @Column(name="offerId")
    @Positive
    private Long offerId;


    @NotNull
    @Column(name="lastseen")
    private LocalDateTime lastSeen;

    public Record(Long clientId, Long offerId, LocalDateTime lastSeen) {
        this.clientId = clientId;
        this.offerId = offerId;
        this.lastSeen = lastSeen;
    }


    public Record() { }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Long getClientId() {
        return clientId;
    }

    public void setClientId(Long clientId) {
        this.clientId = clientId;
    }

    public Long getOfferId() {
        return offerId;
    }

    public void setOfferId(Long offerId) {
        this.offerId = offerId;
    }

    public LocalDateTime getLastSeen() {
        return lastSeen;
    }

    public void setLastSeen(LocalDateTime lastSeen) {
        this.lastSeen = lastSeen;
    }

}