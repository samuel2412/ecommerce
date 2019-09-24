package br.com.samuel.ecommerce.models;

import java.util.Calendar;

import javax.persistence.Embeddable;

import org.springframework.format.annotation.DateTimeFormat;

@Embeddable
public class Comentario {
	
	@DateTimeFormat
    private Calendar dataComentario;
	
	private String comentario;

	public Calendar getDataComentario() {
		return dataComentario;
	}

	public String getComentario() {
		return comentario;
	}

	public void setDataComentario(Calendar dataComentario) {
		this.dataComentario = dataComentario;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}

	@Override
	public String toString() {
		return "Comentario [dataComentario=" + dataComentario + ", comentario=" + comentario + "]";
	}
	
	

}
