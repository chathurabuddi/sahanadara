package lk.chathurabuddi.sahanadara.api.entity;

import javax.persistence.Entity;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Entity
@Data
@EqualsAndHashCode(callSuper = true)
public class ReliefType extends BaseEntity{

    private String name;
}
