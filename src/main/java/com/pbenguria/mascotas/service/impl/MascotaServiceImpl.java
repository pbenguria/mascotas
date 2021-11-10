package com.pbenguria.mascotas.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pbenguria.mascotas.model.Mascota;
import com.pbenguria.mascotas.repository.MascotaRepository;
import com.pbenguria.mascotas.service.MascotaService;

@Service
public class MascotaServiceImpl implements MascotaService {

	@Autowired
	private MascotaRepository mascotaRepository;
      

	@Override
	public List<Mascota> getMascotas() {
		return mascotaRepository.findAll();
	}

	@Override
	public Mascota getMascota(Long codigo) {
		return mascotaRepository.getById(codigo);
	}

	@Override
	public List<Mascota> getMascotaByEstado(String estado) {
		return mascotaRepository.findByEstadoIgnoreCaseContaining(estado);
	}
    
}
