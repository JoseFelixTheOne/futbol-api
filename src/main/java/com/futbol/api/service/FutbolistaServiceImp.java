package com.futbol.api.service;

import com.futbol.api.entity.Futbolista;
import com.futbol.api.repository.FutbolistaRepository;
import lombok.AllArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@AllArgsConstructor
public class FutbolistaServiceImp implements FutbolistaService{
    private final FutbolistaRepository futbolistaRepository;
    @Override
    public Page<Futbolista> findAll(Pageable pageable) {
        return futbolistaRepository.findAll(pageable);
    }

    @Override
    public Optional<Futbolista> findById(Integer idFutbolista) {
        return futbolistaRepository.findById(idFutbolista);
    }
}
