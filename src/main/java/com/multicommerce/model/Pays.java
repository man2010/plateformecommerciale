package com.multicommerce.model;
// Generated 24 mars 2025, 00:24:47 by Hibernate Tools 6.5.1.Final

/**
 * Pays generated by hbm2java
 */
public class Pays implements java.io.Serializable {

	private int idpays;
	private Utilisateur utilisateur;
	private String nom;

	public Pays() {
	}

	public Pays(int idpays) {
		this.idpays = idpays;
	}

	public Pays(int idpays, Utilisateur utilisateur, String nom) {
		this.idpays = idpays;
		this.utilisateur = utilisateur;
		this.nom = nom;
	}

	public int getIdpays() {
		return this.idpays;
	}

	public void setIdpays(int idpays) {
		this.idpays = idpays;
	}

	public Utilisateur getUtilisateur() {
		return this.utilisateur;
	}

	public void setUtilisateur(Utilisateur utilisateur) {
		this.utilisateur = utilisateur;
	}

	public String getNom() {
		return this.nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

}
