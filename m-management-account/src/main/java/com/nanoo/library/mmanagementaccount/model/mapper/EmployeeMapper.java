package com.nanoo.library.mmanagementaccount.model.mapper;

import com.nanoo.library.mmanagementaccount.model.dto.EmployeeDto;
import com.nanoo.library.mmanagementaccount.model.entities.Employee;
import org.mapstruct.InheritInverseConfiguration;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

/**
 * @author nanoo
 * @create 23/11/2019 - 00:30
 */
@Mapper(componentModel = "spring")
public interface EmployeeMapper {
    
    EmployeeMapper MAPPER = Mappers.getMapper(EmployeeMapper.class);
    
    Employee fromDtoToEmployee (EmployeeDto employeeDto);
    
    @InheritInverseConfiguration
    EmployeeDto fromEmployeeToDto (Employee employee);

}
