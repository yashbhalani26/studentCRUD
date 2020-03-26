package com.example.crud.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.crud.model.Student;

@Repository
public interface StudentRepo extends JpaRepository<Student, Long>
{

}
