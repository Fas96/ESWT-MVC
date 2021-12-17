package com.example.dao.employee;

import com.example.entity.Employee;
import com.example.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public interface IEmployeeMapper {

     void saveEmployee(Employee employee);

     void updateEmployee(Employee employee);

     void deleteEmployee(int employeeId);

     List<Employee> getAllEmployees();

     Employee findEmployeedById(int employeeId);
}
