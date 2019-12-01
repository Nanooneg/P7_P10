package com.nanoo.library.clientweb.beans.user;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;

/**
 * @author nanoo
 * @create 23/11/2019 - 23:32
 */
@Getter @Setter
@NoArgsConstructor
public class AddressBean  implements Serializable {
    
    private static final long serialVersionUID = 1L;
    
    private Integer id;
    private int number;
    private String street;
    private int postalCode;
    private String city;
    
}
