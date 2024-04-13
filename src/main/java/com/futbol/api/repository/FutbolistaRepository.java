package com.futbol.api.repository;

import com.futbol.api.entity.Futbolista;
import org.springframework.data.jpa.repository.JpaRepository;

public interface FutbolistaRepository extends JpaRepository<Futbolista, Integer> {
}
