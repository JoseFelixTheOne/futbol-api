package com.futbol.api.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.awt.print.Pageable;

@RestController
public class FutbolistaController {
    @GetMapping
    public String hola(Pageable pageable){
        return "hola papi";
    }
}
