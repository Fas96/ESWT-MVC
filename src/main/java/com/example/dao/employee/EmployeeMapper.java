package com.example.dao.employee;

import com.example.dao.employee.IEmployeeMapper;
import com.example.entity.Employee;
import com.example.util.MyBatisUtil;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class EmployeeMapper implements IEmployeeMapper {

    public void saveEmployee(Employee employee){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        session.insert("insertEmployee", employee);
        session.commit();
        session.close();
    }

    public void updateEmployee(Employee employee){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        session.update("updateEmployee", employee);
        session.commit();
        session.close();
    }

    public void deleteEmployee(int employeeId){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        session.delete("deleteEmployee", employeeId);
        session.commit();
        session.close();
    }

    public List<Employee> getAllEmployees(){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        @SuppressWarnings("unchecked")
        List<Employee> employeesList = session.selectList("getAllEmployees");
        session.commit();
        session.close();
        return employeesList;
    }

    public Employee findEmployeedById(int employeeId){
        SqlSession session = MyBatisUtil.getSqlSessionFactory().openSession();
        Employee employee = (Employee) session.selectOne("findEmployeedById", employeeId);
        session.commit();
        session.close();
        return employee;
    }
}