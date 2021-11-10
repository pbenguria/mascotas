package com.pbenguria.mascotas.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.pbenguria.mascotas.model.Mascota;

@Repository
public interface MascotaRepository extends JpaRepository<Mascota, Long> {

	List<Mascota> findByEstadoIgnoreCaseContaining(String estado);
	
}
