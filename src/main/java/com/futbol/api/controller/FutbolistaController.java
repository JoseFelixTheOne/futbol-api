package com.futbol.api.controller;

import com.futbol.api.entity.Futbolista;
import com.futbol.api.service.FutbolistaService;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;


@RestController
@RequestMapping("futbolista")
@AllArgsConstructor
public class FutbolistaController {
    private final FutbolistaService futbolistaService;
    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public Page<Futbolista> findAll(Pageable pageable){
        return futbolistaService.findAll(pageable);
    }

    @GetMapping("{id}")
    public ResponseEntity<Futbolista> findById(@PathVariable Integer id){
        return ResponseEntity.of(futbolistaService.findById(id));
    }
}
