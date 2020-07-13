package lk.chathurabuddi.sahanadara.api.entity;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Entity
@Data
@EqualsAndHashCode(callSuper = true)
public class Relief extends BaseEntity{

    private String title;

    private String description;

    @ManyToOne
    private ReliefType reliefType;

    @ManyToOne
    private User volunteer;

    @ManyToOne
    private Incident incident;

    @ManyToOne
    private Location distributedLocation;

    @ManyToOne
    private ReliefRequest reliefRequest;

    private boolean completed;

}
