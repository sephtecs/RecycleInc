package com.codingdojo.recyclinc.models;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="locations")
public class Location {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	
	@NotNull
	private Double lat;
	
	@NotNull
	private Double lng;
	
	@NotNull
	private String description;
	
	
	
	
	
}
