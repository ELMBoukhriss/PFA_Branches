package com.emsi.pfa.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "branches")
public class Branche {
		
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Column(name = "branche")
	private String branche;
	
	public Branche(String branche) {
		super();
		this.branche = branche;
	}
	
	
	public Branche() {
		super();
	}



	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getBranche() {
		return branche;
	}
	public void setBranche(String branche) {
		this.branche = branche;
	}
	
	
}
