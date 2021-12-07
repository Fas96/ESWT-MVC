package com.example.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Date;

@Data@NoArgsConstructor@AllArgsConstructor@ToString
public class GradeTypeTotalDao {

    private  Integer id;
    private String name;
    private Integer Speaking;
    private Integer Writing;
    private Integer Reading;
    private Integer  Listening;
    private Date date ;
}
