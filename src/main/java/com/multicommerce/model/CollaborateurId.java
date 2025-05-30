package com.multicommerce.model;
// Generated 24 mars 2025, 00:24:47 by Hibernate Tools 6.5.1.Final

/**
 * CollaborateurId generated by hbm2java
 */
public class CollaborateurId implements java.io.Serializable {

	private int idcollab;
	private int idutilisateur;

	public CollaborateurId() {
	}

	public CollaborateurId(int idcollab, int idutilisateur) {
		this.idcollab = idcollab;
		this.idutilisateur = idutilisateur;
	}

	public int getIdcollab() {
		return this.idcollab;
	}

	public void setIdcollab(int idcollab) {
		this.idcollab = idcollab;
	}

	public int getIdutilisateur() {
		return this.idutilisateur;
	}

	public void setIdutilisateur(int idutilisateur) {
		this.idutilisateur = idutilisateur;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof CollaborateurId))
			return false;
		CollaborateurId castOther = (CollaborateurId) other;

		return (this.getIdcollab() == castOther.getIdcollab())
				&& (this.getIdutilisateur() == castOther.getIdutilisateur());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getIdcollab();
		result = 37 * result + this.getIdutilisateur();
		return result;
	}

}
