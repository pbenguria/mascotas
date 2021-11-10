package com.pbenguria.mascotas.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity(name="MASCOTAS")
public class Mascota {
	
	@Id
    private Long codigo;
    private String nombre;
    private String estado;
    private Date fechaNacimiento;
    private Integer numeroVisitas;
    private String propietarioNombre;
    private String propietarioApellidos;
    
}
