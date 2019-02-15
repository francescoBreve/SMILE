package com.smile.model;

import java.util.ArrayList;

public class Database {
	public static ArrayList<Utente> utenti = new ArrayList<Utente>();
	
	public static void initAccount() {
		utenti.add(new Utente("Admin","a@e.it","1234"));
		utenti.get(0).addPartita(new Statistica("Italiano", 250, 1100));
		utenti.get(0).addPartita(new Statistica("Matematica", 3250, 2100));
		utenti.get(0).addPartita(new Statistica("Logica", 113, 9100));
		utenti.get(0).addPartita(new Statistica("Grammatica", 24, 23100));
		
	}
	
	public static Utente getUserByEmail(String email) {
		Utente toReturn = null; 
		for (int i = 0; i < utenti.size(); i++) {
			if(utenti.get(i).getEmail().equals(email)) {
				toReturn = utenti.get(i);
			}
		}
		return toReturn;
	}
	
}
