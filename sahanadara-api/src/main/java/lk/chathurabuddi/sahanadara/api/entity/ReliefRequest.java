package lk.chathurabuddi.sahanadara.api.entity;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Entity
@Data
@EqualsAndHashCode(callSuper = true)
public class ReliefRequest extends BaseEntity {

    private String title;

    private String description;

    @ManyToOne
    private User requestingUser;

    @ManyToOne
    private Incident associatedIncident;

    @ManyToOne
    private Location location;

    private boolean completed;
}
