package com.smile.model;

import java.util.GregorianCalendar;

public class Statistica {
	
	private String nomeGioco;
	private int punteggio;
	private GregorianCalendar data;
	private long tempoMills;
	
	
	public Statistica() {
		data = new GregorianCalendar();
	}
	
	public Statistica(String nomeGioco, int punteggio, long tempoMills) {
		this.nomeGioco = nomeGioco;
		this.punteggio = punteggio;
		this.tempoMills = tempoMills;
		data = new GregorianCalendar();
	}
	

}
