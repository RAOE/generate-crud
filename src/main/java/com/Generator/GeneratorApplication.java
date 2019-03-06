package com.Generator;

import java.io.File;
import java.net.URL;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import tk.mybatis.spring.annotation.MapperScan;

@SpringBootApplication
@MapperScan("com.Generator.mapper")
public class GeneratorApplication {

	public static void main(String[] args) {
		SpringApplication.run(GeneratorApplication.class, args);

	}
	

	
	
	
}
