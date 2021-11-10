package com.pbenguria.mascotas.service;

import java.util.List;

import com.pbenguria.mascotas.model.Mascota;


public interface MascotaService {

	List<Mascota> getMascotas();
	
	List<Mascota> getMascotaByEstado(String estado);

    Mascota getMascota(Long codigo);
    
}
