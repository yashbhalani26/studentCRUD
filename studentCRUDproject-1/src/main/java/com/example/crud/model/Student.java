package com.example.crud.model;

import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.data.jpa.domain.support.AuditingEntityListener;


import lombok.Data;
@Entity
@Table(name="student")
@EntityListeners(AuditingEntityListener.class)
@Data

	public class Student {
		
		@Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
		private Long id;
		private String f_name;
		private String l_name;
		private String mobile_number;
		private String email;
		private String gender;
		private String city;
		private String state;
		private String Country;
	
	}

