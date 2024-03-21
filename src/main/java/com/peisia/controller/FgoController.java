package com.peisia.controller;

import java.io.IOException;
import java.net.URISyntaxException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.peisia.service.FgoService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/fgo/*")
@AllArgsConstructor
@Controller
public class FgoController {
	
	private FgoService service;
	
	@GetMapping("/ServantList")
	public void servantList(@RequestParam("className")String className, Model model) throws IOException, URISyntaxException {
		log.info("======확인중======");
		System.out.println("컨트롤러들어오는지 확인중");
		System.out.println(service.getServantData(className));
		model.addAttribute("servant", service.getServantData(className));
	}
	
	@GetMapping("/Status")
	public void status(@RequestParam("id")int id, Model model) throws IOException, URISyntaxException {
		log.info("======확인중======");
		model.addAttribute("status", service.getStatusData(id));
	}
}