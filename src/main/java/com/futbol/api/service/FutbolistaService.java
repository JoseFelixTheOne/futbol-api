package com.futbol.api.service;

import com.futbol.api.entity.Futbolista;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import java.util.Optional;

public interface FutbolistaService {
    Page<Futbolista> findAll(Pageable pageable);
    Optional<Futbolista> findById(Integer idFutbolista);
}
