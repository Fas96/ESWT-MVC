package com.example.dao.daoInterfaceTest;

import com.example.entity.Employee;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
@Mapper
public interface ArticleMapper {
    @Select("SELECT * FROM Employee WHERE id = #{id}")
     Employee getTestEmployee(@Param("id") Long id) ;
}
