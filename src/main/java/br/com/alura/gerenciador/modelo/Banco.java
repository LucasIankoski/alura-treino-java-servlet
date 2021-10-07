package br.com.alura.gerenciador.modelo;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class Banco {

	private static List<Empresa> listaEmpresas = new ArrayList<>();
	private static List<Usuario> listaUsuarios = new ArrayList<>();
	private static Integer chaveSequencial = 1;

	static {
		Usuario admin = new Usuario();
		admin.setLogin("admin");
		admin.setSenha("12345");

		listaUsuarios.add(admin);
	}

	public void adiciona(Empresa empresa) {
		empresa.setId(Banco.chaveSequencial++);
		Banco.listaEmpresas.add(empresa);
	}

	public List<Empresa> getEmpresas() {
		return Banco.listaEmpresas;
	}

	public void remove(Integer id) {

		Iterator<Empresa> it = listaEmpresas.iterator();
		while (it.hasNext()) {
			Empresa emp = it.next();

			if (emp.getId() == id) {
				it.remove();
			}
		}
	}

	public Empresa buscaPeloIdEmpresa(Integer id) {
		for (Empresa empresa : listaEmpresas) {
			if (empresa.getId() == id) {
				return empresa;
			}

		}
		return null;
	}

	public Usuario verificaAutenticidade(String login, String senha) {
		for (Usuario usuario : listaUsuarios) {
			if (usuario.ehIgual(login, senha)) {
				return usuario;
			}

		}
		return null;
	}

}