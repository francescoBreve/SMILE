package com.smile.model;

import java.util.ArrayList;
import java.util.GregorianCalendar;

public class Utente {
	
	//Anagrafica
	private String username;
	private String email;
	private String password;
	private GregorianCalendar dataCreazione;

	//Statistiche
	private ArrayList<Statistica> stats;
	
	public Utente() {
		dataCreazione = new GregorianCalendar();
		stats = new ArrayList<Statistica>();
	}
	
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public GregorianCalendar getDataCreazione() {
		return dataCreazione;
	}

	public void setDataCreazione(GregorianCalendar dataCreazione) {
		this.dataCreazione = dataCreazione;
	}

	public ArrayList<Statistica> getStats() {
		return stats;
	}

	public void setStats(ArrayList<Statistica> stats) {
		this.stats = stats;
	}

	public Utente(String username, String email, String password) {
		this.username = username;
		this.email = email;
		this.password = password;
		dataCreazione = new GregorianCalendar();
		stats = new ArrayList<Statistica>();
	}

	@Override
	public String toString() {
		return "Utente [username=" + username + ", email=" + email + ", password=" + password + ", dataCreazione="
				+ dataCreazione + ", stats=" + stats + "]";
	}
	
}
