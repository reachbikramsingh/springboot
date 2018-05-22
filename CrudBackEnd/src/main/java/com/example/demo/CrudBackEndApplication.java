package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
public class CrudBackEndApplication implements CommandLineRunner {
	@Autowired
	private UserRepository userRepository;

	public static void main(String[] args) {
		SpringApplication.run(CrudBackEndApplication.class, args);
	}

	@Override
	public void run(String[] arg) {
		userRepository.save(new User("bikram", 84587.0, "java"));
		userRepository.save(new User("sandeep", 9856.0, "admin"));
		userRepository.save(new User("rohit", 84587.0, "test"));
		userRepository.save(new User("arpit", 5656.0, "dev"));

		// userRepository.delete(2);

	}
}
