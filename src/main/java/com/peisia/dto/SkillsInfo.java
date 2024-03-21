package com.peisia.dto;

import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@Data
@JsonIgnoreProperties(ignoreUnknown = true)
public class SkillsInfo {
	private int id;
	private int collectionNo;
	private String name;
	private String className;
	private int rarity;
	private String face;
	private List<Skills> skills;
}
