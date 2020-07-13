package lk.chathurabuddi.sahanadara.api.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;

@MappedSuperclass
@Data
public abstract class BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Temporal(TemporalType.TIMESTAMP)
    @Column(updatable = false)
    private Date creationTimestamp;

    @Temporal(TemporalType.TIMESTAMP)
    private Date updateTimestamp;

    @PrePersist
    protected final void onCreate() {
        this.creationTimestamp = new Date();
    }

    @PreUpdate
    protected final void onUpdate() {
        this.updateTimestamp = new Date();
    }
}
