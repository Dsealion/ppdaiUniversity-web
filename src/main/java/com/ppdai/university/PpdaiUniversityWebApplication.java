package com.ppdai.university;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.ppdai.university.dao")
public class PpdaiUniversityWebApplication {

	public static void main(String[] args) {
		SpringApplication.run(PpdaiUniversityWebApplication.class, args);
	}
}
