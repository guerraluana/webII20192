/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author matheus
 */
public class UsuarioDAO {
    public String checkLogin(Usuario user){
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        String response = "";
        
        try {
            con = ConnectionFactory.getConnection();
            st = con.prepareStatement("select nome_usuario from tb_usuario where login_usuario = ? and senha_usuario = ?");
            st.setString(1, user.getLogin());
            st.setString(2, user.getSenha());
            
            rs = st.executeQuery();
            while (rs.next()){
                response = rs.getString("nome_usuario");
            }
        }
        catch(Exception e) {
            throw new RuntimeException(e);
        }
        finally {
            if (st!=null)
            try {st.close();} catch (Exception e){}
            if (con!=null)
            try {con.close();} catch (Exception e){}
        }
        
        return response;
    }

    public List<Usuario> buscarTodos(){
        List<Usuario> resultados = new ArrayList<Usuario>();
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        
        try {
            con = ConnectionFactory.getConnection();
            st = con.prepareStatement("SELECT id_usuario, nome_usuario, login_usuario, senha_usuario FROM tb_usuario");
            rs = st.executeQuery();
            while (rs.next()) {
                Usuario usuario = new Usuario();
                usuario.setId( rs.getInt("id_usuario") );
                usuario.setNome( rs.getString("nome_usuario") );
                usuario.setLogin( rs.getString("login_usuario") );
                usuario.setSenha( rs.getString("senha_usuario") );
                resultados.add(usuario);
            }
            return resultados;
        }
        catch(Exception e) {
            throw new RuntimeException(e);
        }
        finally {
            if (rs!=null)
                try {rs.close();} catch (Exception e){}
            if (st!=null)
                try {st.close();} catch (Exception e){}
            if (con!=null)
                try {con.close();} catch (Exception e){}
        }
    }
    
    public void inserir(Usuario usuario){
        Connection con = null;
        PreparedStatement st = null;
        
        try {
            con = ConnectionFactory.getConnection();
            st = con.prepareStatement("insert into tb_usuario (nome_usuario, login_usuario, "
                                    + "senha_usuario) values (?, ?, ?)");
            st.setString(1, usuario.getNome());
            st.setString(2, usuario.getLogin());
            st.setString(3, usuario.getSenha());
        
            st.executeUpdate();
            
        }
        catch(Exception e) {
            throw new RuntimeException(e);
        }
        finally {
            if (st!=null)
                try {st.close();} catch (Exception e){}
            if (con!=null)
                try {con.close();} catch (Exception e){}
        }
    }
}
