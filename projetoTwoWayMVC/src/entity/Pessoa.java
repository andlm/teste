package entity;

import java.io.Serializable;

public class Pessoa implements Serializable{

	private static final long serialVersionUID = 1L;	
	
	private Integer idPessoa;
	private String nome;
	private String email;
	
	public Pessoa() {
	
	}

	public Pessoa(Integer idPessoa, String nome, String email) 	{
		super();
		this.idPessoa = idPessoa;
		this.nome = nome;
		this.email = email;
	}

	@Override
	public String toString() {
		return "Pessoa [idPessoa=" + idPessoa + ", nome=" + nome + ", email=" + email + "]";
	}

	public Integer getIdPessoa() {
		return idPessoa;
	}
	public void setIdPessoa(Integer idPessoa) {
		this.idPessoa = idPessoa;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}   