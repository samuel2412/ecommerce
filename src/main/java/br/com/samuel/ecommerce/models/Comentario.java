package br.com.samuel.ecommerce.models;

import java.util.Calendar;

import javax.persistence.Embeddable;

import org.springframework.format.annotation.DateTimeFormat;

@Embeddable
public class Comentario {
	
	@DateTimeFormat
    private Calendar dataComentario;
	
	private String comentario;
	
	private String usuarioEmail;
	
	
	



	public Calendar getDataComentario() {
		return dataComentario;
	}






	public void setDataComentario(Calendar dataComentario) {
		this.dataComentario = dataComentario;
	}






	public String getComentario() {
		return comentario;
	}






	public void setComentario(String comentario) {
		this.comentario = comentario;
	}






	public String getUsuarioEmail() {
		return usuarioEmail;
	}






	public void setUsuarioEmail(String usuarioEmail) {
		this.usuarioEmail = usuarioEmail;
	}






	@Override
	public String toString() {
		return "Comentario [dataComentario=" + dataComentario + ", comentario=" + comentario + "]";
	}
	
	

}
