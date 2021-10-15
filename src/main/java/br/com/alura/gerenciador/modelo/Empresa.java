package br.com.alura.gerenciador.modelo;

import java.util.Date;

public class Empresa {

	private Integer id;
	private String cnpj;
	private String nome;
	private Date dataAbertura;
	private double capital;
	private String email;

	public Empresa() {

	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getId() {
		return this.id;
	}
	
	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}
	
	public String getCnpj() {
		return this.cnpj;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return this.nome;
	}

	public void setDataAbertura(Date dataAbertura) {
		this.dataAbertura = dataAbertura;
	}

	public Date getDataAbertura() {
		return this.dataAbertura;
	}

	public void setCapital(double capital){
		this.capital = capital;
	}
	
	public double getCapital() {
		return this.capital;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getEmail() {
		return email;
	}
}


