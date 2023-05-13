package model.dto;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Usuario {


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(nullable = false, length = 45)
	private String nome;
	@Column(nullable = false, unique = true)
	private String email;
	@Column(name = "nome_de_usuario",nullable = false, length = 45)
	private String nomeDeUsuario;
	@Column(nullable = false)
	private String senha;



	public Usuario() {
		super();
	}



	public Usuario(int id, String nome, String email, String nomeDeUsuario, String senha) {
		super();
		this.id = id;
		this.nome = nome;
		this.email = email;
		this.nomeDeUsuario = nomeDeUsuario;
		this.senha = senha;
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
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



	public String getNomeDeUsuario() {
		return nomeDeUsuario;
	}



	public void setNomeDeUsuario(String nomeDeUsuario) {
		this.nomeDeUsuario = nomeDeUsuario;
	}



	public String getSenha() {
		return senha;
	}



	public void setSenha(String senha) {
		this.senha = senha;
	}








}
