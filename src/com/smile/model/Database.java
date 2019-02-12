package com.smile.model;

import java.util.ArrayList;

public class Database {
	public static ArrayList<Utente> utenti = new ArrayList<Utente>();
	
	public static void initAccount() {
		utenti.add(new Utente("Admin","a@e.it","1234"));
	}
}
