package com.futbol.api.repository;

import com.futbol.api.entity.Posicion;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PosicionRepository extends JpaRepository<Posicion, Integer> {
}
