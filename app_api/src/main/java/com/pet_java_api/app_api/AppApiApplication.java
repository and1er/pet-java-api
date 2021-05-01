package com.pet_java_api.app_api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.pet_java_api.app_api.StorageProperties;

@SpringBootApplication
@RestController
@EnableConfigurationProperties(StorageProperties.class)
public class AppApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(AppApiApplication.class, args);
	}
}
