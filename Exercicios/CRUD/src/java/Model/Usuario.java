package Model;

import DAO.UsuarioDAO;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Herik
 */
public class Usuario {
    private int id;
    private String nome;
    private String login;
    private String senha;

    public Usuario(){
    }
    
    public Usuario(String nome, String login, String senha){
        this.nome = nome;
        this.login = login;
        this.senha = senha;
    }

    public Usuario(String login, String senha) {
        this.login = login;
        this.senha = senha;
    }
    
    public int getId() {
	return id;
    }

    public void setId(int id){
        this.id = id;
    }
    
    public String getNome() {
	return nome;
    }

    public void setNome(String nome) {
    	this.nome = nome;
    }
        
    public String getLogin() {
	return login;
    }

    public void setLogin(String login) {
    	this.login = login;
    }
        
    public String getSenha() {
	return senha;
    }

    public void setSenha(String senha) {
    	this.senha = senha;
    }

    public String verifyLogin() {
        UsuarioDAO dao = new UsuarioDAO();
        String r = dao.checkLogin(this);
        return r;
    }
}
