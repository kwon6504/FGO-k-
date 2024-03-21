package com.peisia.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@Data
@JsonIgnoreProperties(ignoreUnknown = true)
public class FgoDto {
	
	private int id;
	private String name;
	private String className;
	private int rarity;
	private String face;
	
	//생성자 함수 @Data 덕분에 필요 없지만 함수째로 쓰려고 만듬
	public FgoDto(int id, String name, String className, int rarity, String face) {
		this.id = id;
		this.name  = name;
		this.className = className;
		this.rarity = rarity;
		this.face = face;
	}
	
}
