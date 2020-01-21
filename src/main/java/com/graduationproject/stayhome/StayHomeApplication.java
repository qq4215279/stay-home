package com.graduationproject.stayhome;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.MultipartConfigFactory;
import org.springframework.context.annotation.Bean;

import javax.servlet.MultipartConfigElement;

@SpringBootApplication
public class StayHomeApplication {

    public static void main(String[] args) {
        SpringApplication.run(StayHomeApplication.class, args);
    }

}
