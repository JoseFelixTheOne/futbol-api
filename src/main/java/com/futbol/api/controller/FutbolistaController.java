package com.futbol.api.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class FutbolistaController {
    @GetMapping
    public String hola(){
        return "hola papi";
    }
}
