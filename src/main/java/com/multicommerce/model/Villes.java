package com.multicommerce.model;
// Generated 24 mars 2025, 00:24:47 by Hibernate Tools 6.5.1.Final

/**
 * Villes generated by hbm2java
 */
public class Villes implements java.io.Serializable {

	private int idville;
	private Utilisateur utilisateur;
	private String nom;

	public Villes() {
	}

	public Villes(int idville) {
		this.idville = idville;
	}

	public Villes(int idville, Utilisateur utilisateur, String nom) {
		this.idville = idville;
		this.utilisateur = utilisateur;
		this.nom = nom;
	}

	public int getIdville() {
		return this.idville;
	}

	public void setIdville(int idville) {
		this.idville = idville;
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
