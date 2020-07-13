package lk.chathurabuddi.sahanadara.api.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Entity
@Data
@EqualsAndHashCode(callSuper = true)
public class Incident extends BaseEntity{

    private String name;

    private String description;

    @Temporal(TemporalType.DATE)
    private Date date;

}
