package com.pbenguria.mascotas.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.pbenguria.mascotas.model.Mascota;
import com.pbenguria.mascotas.service.MascotaService;

@Controller
@RequestMapping("/mascotas")
public class MascotaController {

	@Autowired
	private MascotaService mascotaService;

	
    @GetMapping
    public String viewMascotas(Model model) {
        model.addAttribute("mascotas", mascotaService.getMascotas());
        return "view-mascotas";
    }

    @GetMapping("/{codigo}")
    public String viewMascota(Model model, @PathVariable final long codigo) {
    	Mascota mascota = mascotaService.getMascota(codigo);
        model.addAttribute("mascota", mascota);
        return "view-mascota";
    }

    @PostMapping()
    public String filtrarEstado(Model model, @RequestAttribute final String estado) {
        model.addAttribute("mascotas", mascotaService.getMascotaByEstado(estado));
        return "view-mascota";
    }
	
}
