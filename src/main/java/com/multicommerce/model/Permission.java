package com.multicommerce.model;
// Generated 24 mars 2025, 00:24:47 by Hibernate Tools 6.5.1.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Permission generated by hbm2java
 */
public class Permission implements java.io.Serializable {

	private int idpermission;
	private Integer libelle;
	private Integer datecreation;
	private Integer etat;
	private Set roles = new HashSet(0);

	public Permission() {
	}

	public Permission(int idpermission) {
		this.idpermission = idpermission;
	}

	public Permission(int idpermission, Integer libelle, Integer datecreation, Integer etat, Set roles) {
		this.idpermission = idpermission;
		this.libelle = libelle;
		this.datecreation = datecreation;
		this.etat = etat;
		this.roles = roles;
	}

	public int getIdpermission() {
		return this.idpermission;
	}

	public void setIdpermission(int idpermission) {
		this.idpermission = idpermission;
	}

	public Integer getLibelle() {
		return this.libelle;
	}

	public void setLibelle(Integer libelle) {
		this.libelle = libelle;
	}

	public Integer getDatecreation() {
		return this.datecreation;
	}

	public void setDatecreation(Integer datecreation) {
		this.datecreation = datecreation;
	}

	public Integer getEtat() {
		return this.etat;
	}

	public void setEtat(Integer etat) {
		this.etat = etat;
	}

	public Set getRoles() {
		return this.roles;
	}

	public void setRoles(Set roles) {
		this.roles = roles;
	}

}
