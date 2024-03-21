package com.peisia.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Data;

@Data
@JsonIgnoreProperties(ignoreUnknown = true)
public class Skills {
	private int id;
	private int num;
	private String name;
	private String detail;
	private String icon;
	private int priority;
}
