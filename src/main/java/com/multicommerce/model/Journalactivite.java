package com.multicommerce.model;
// Generated 24 mars 2025, 00:24:47 by Hibernate Tools 6.5.1.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Journalactivite generated by hbm2java
 */
public class Journalactivite implements java.io.Serializable {

	private int idjournal;
	private Integer dateaction;
	private Integer typeaction;
	private Integer description;
	private Set sessions = new HashSet(0);

	public Journalactivite() {
	}

	public Journalactivite(int idjournal) {
		this.idjournal = idjournal;
	}

	public Journalactivite(int idjournal, Integer dateaction, Integer typeaction, Integer description, Set sessions) {
		this.idjournal = idjournal;
		this.dateaction = dateaction;
		this.typeaction = typeaction;
		this.description = description;
		this.sessions = sessions;
	}

	public int getIdjournal() {
		return this.idjournal;
	}

	public void setIdjournal(int idjournal) {
		this.idjournal = idjournal;
	}

	public Integer getDateaction() {
		return this.dateaction;
	}

	public void setDateaction(Integer dateaction) {
		this.dateaction = dateaction;
	}

	public Integer getTypeaction() {
		return this.typeaction;
	}

	public void setTypeaction(Integer typeaction) {
		this.typeaction = typeaction;
	}

	public Integer getDescription() {
		return this.description;
	}

	public void setDescription(Integer description) {
		this.description = description;
	}

	public Set getSessions() {
		return this.sessions;
	}

	public void setSessions(Set sessions) {
		this.sessions = sessions;
	}

}
