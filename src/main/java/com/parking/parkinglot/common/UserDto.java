package com.parking.parkinglot.common;

import com.parking.parkinglot.entities.Car;
import jakarta.persistence.Column;
import jakarta.persistence.OneToMany;

import java.util.ArrayList;
import java.util.List;

public class UserDto {
    Long id;
    String password;
    String email;
    String username;

    public UserDto(Long id, String password, String email, String username) {
        this.id = id;
        this.password = password;
        this.email = email;
        this.username = username;
    }

    public Long getId() {
        return id;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }

    public String getUsername() {
        return username;
    }
}
