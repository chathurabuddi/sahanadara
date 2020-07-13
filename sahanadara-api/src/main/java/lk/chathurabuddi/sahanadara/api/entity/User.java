package lk.chathurabuddi.sahanadara.api.entity;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;

import lk.chathurabuddi.sahanadara.api.constant.UserType;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Entity
@Data
@EqualsAndHashCode(callSuper = true)
public class User extends BaseEntity {

    private String name;

    private String email;

    private String contactNumber;

    @Enumerated(EnumType.STRING)
    private UserType userType;
}
