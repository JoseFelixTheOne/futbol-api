package com.futbol.api.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDate;

@Entity
@Table(name = "futbolista")
@Getter
@Setter
public class Futbolista {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_futbolista")
    private Integer idFutbolista;
    private String nombres;
    private String apellidos;
    @Column(name = "fecha_nacimiento")
    private LocalDate fechaNacimiento;
    private String caracteristicas;
    @Column(name = "id_posicion")
    private Integer idPosicion;

    @ManyToOne
    @JoinColumn(name = "id_posicion", insertable = false, updatable = false)
    private Posicion posicion;
}
