package com.nanoo.library.clientweb.model.beans.user;

import com.nanoo.library.clientweb.model.enums.Cities;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

/**
 * @author nanoo
 * @create 23/11/2019 - 23:32
 */
@Getter @Setter
@NoArgsConstructor
public class AddressBean {
    
    private Integer id;
    private int number;
    private String street;
    private int postalCode;
    private String city;
    
    @Override
    public String toString() {
        return number + " " + street + " " + postalCode + " " + Cities.valueOf(city).getName();
    }
}