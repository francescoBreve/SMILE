package com.smile.model;

import java.util.GregorianCalendar;

public class Statistica {
	
	private String nomeGioco;
	private int corrette;
	private int ndomande;
	private int punteggio;
	private GregorianCalendar data;
	private String tempo;
	
	
	public String getNomeGioco() {
		return nomeGioco;
	}

	public int getCorrette() {
		return corrette;
	}

	public int getNdomande() {
		return ndomande;
	}

	public int getPunteggio() {
		return punteggio;
	}

	public GregorianCalendar getData() {
		return data;
	}

	public String getTempo() {
		return tempo;
	}
	
	
	public Statistica() {
		data = new GregorianCalendar();
	}
	
	public Statistica(String nomeGioco, int ndomande, int corrette, int punteggio, String tempo) {
		this.nomeGioco = nomeGioco;
		this.ndomande = ndomande;
		this.corrette = corrette;
		this.punteggio = punteggio;
		this.tempo = tempo;
		data = new GregorianCalendar();
	}

	@Override
	public String toString() {
		return "Statistica [nomeGioco=" + nomeGioco + ", corrette=" + corrette + ", ndomande=" + ndomande
				+ ", punteggio=" + punteggio + ", data=" + data + ", tempo=" + tempo + "]";
	}
	

}
