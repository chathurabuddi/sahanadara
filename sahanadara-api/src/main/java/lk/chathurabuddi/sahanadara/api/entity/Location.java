package lk.chathurabuddi.sahanadara.api.entity;

import javax.persistence.Entity;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Entity
@Data
@EqualsAndHashCode(callSuper = true)
public class Location extends BaseEntity{

    private String latitude;

    private String longitude;
}
