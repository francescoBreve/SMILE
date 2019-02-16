package com.smile.model;

import java.util.ArrayList;

public class Database {
	public static ArrayList<Utente> utenti = new ArrayList<Utente>();
	
	public static void initAccount() {
		utenti.add(new Utente("Admin","a@e.it","1234"));
		utenti.get(0).addPartita(new Statistica("Italiano", 5, 3, 200, "0:00:50"));
		utenti.get(0).addPartita(new Statistica("Matematica", 5, 3, 390, "0:00:50"));
		utenti.get(0).addPartita(new Statistica("Logica", 5, 3, 310, "0:03:40"));
		utenti.get(0).addPartita(new Statistica("Grammatica",5, 3, 650, "0:10:50"));
		
	}
	
	public static void addStatToUser(String email, Statistica x) {
		for (int i = 0; i < utenti.size(); i++) {
			if(utenti.get(i).getEmail().equals(email)) {
				utenti.get(i).addPartita(x);
			}
		}
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
