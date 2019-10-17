/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Usuario;
import beans.Cliente;
import static com.sun.org.apache.xalan.internal.xsltc.compiler.util.Type.Int;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author matheus
 */
public class ClienteDAO {
    public List<Cliente> buscarTodos(){
        List<Cliente> resultados = new ArrayList<Cliente>();
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        
        try {
            con = ConnectionFactory.getConnection();
            st = con.prepareStatement("SELECT id_cliente, cpf_cliente, nome_cliente, email_cliente FROM tb_cliente");
            rs = st.executeQuery();
            while (rs.next()) {
                Cliente cliente = new Cliente();
                cliente.setId( rs.getInt("id_cliente") );
                cliente.setNome( rs.getString("nome_cliente") );
                cliente.setCpf( rs.getString("cpf_cliente") );
                cliente.setEmail( rs.getString("email_cliente") );
                resultados.add(cliente);
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
    
    public void remover(int idCliente){
        Connection con = null;
        PreparedStatement st = null;
        
        try {
            con = ConnectionFactory.getConnection();
            st = con.prepareStatement("delete from tb_cliente where id_cliente = ?");
            st.setInt(1, idCliente);
        
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

    public Cliente buscaCliente(int idCliente) {
        Cliente cliente = new Cliente();
        Connection con = null;
        PreparedStatement st = null;
        ResultSet rs = null;
        
        try {
            con = ConnectionFactory.getConnection();
            st = con.prepareStatement("SELECT id_cliente, cpf_cliente, nome_cliente, email_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, cidade_cliente, uf_cliente  FROM tb_cliente WHERE id_cliente = ?");
            st.setInt(1, idCliente);
            
            rs = st.executeQuery();
            while (rs.next()) {
                cliente.setId( rs.getInt("id_cliente") );
                cliente.setNome( rs.getString("nome_cliente") );
                cliente.setCpf( rs.getString("cpf_cliente") );
                cliente.setEmail( rs.getString("email_cliente") );
                cliente.setRua( rs.getString("rua_cliente") );
                cliente.setCidade( rs.getString("cidade_cliente") );
                cliente.setCep( rs.getString("cep_cliente") );
                cliente.setNumero( rs.getString("nr_cliente") );
                cliente.setUf( rs.getString("uf_cliente") );
                cliente.setData( rs.getDate("data_cliente") );
            }
            return cliente;
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
    
    public void atualizar(Cliente cliente){
        Connection con = null;
        PreparedStatement st = null;
        
        try {
            con = ConnectionFactory.getConnection();
            st = con.prepareStatement("update tb_cliente set cpf_cliente = ?, nome_cliente = ?, email_cliente = ?, data_cliente = ?, rua_cliente = ?, nr_cliente = ?, cep_cliente = ?, cidade_cliente = ?, uf_cliente = ? where id_cliente = ?");
            st.setString(1, cliente.getCpf());
            st.setString(2, cliente.getNome());
            st.setString(3, cliente.getEmail());
            st.setDate(4, (Date) cliente.getData());
            st.setString(5, cliente.getRua());
            st.setInt(6, Integer.valueOf(cliente.getNumero()));
            st.setString(7, cliente.getCep());
            st.setString(8, cliente.getCidade());
            st.setString(9, cliente.getUf());
            st.setInt(10, cliente.getId());
            
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
    
    public void inserir(Cliente cliente){
        Connection con = null;
        PreparedStatement st = null;
        
        try {
            con = ConnectionFactory.getConnection();
            st = con.prepareStatement("INSERT INTO tb_cliente (cpf_cliente, nome_cliente, email_cliente, data_cliente, rua_cliente, nr_cliente, cep_cliente, cidade_cliente, uf_cliente) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
            st.setString(1, cliente.getCpf());
            st.setString(2, cliente.getNome());
            st.setString(3, cliente.getEmail());
            st.setDate(4, (Date) cliente.getData());
            st.setString(5, cliente.getRua());
            st.setInt(6, Integer.valueOf(cliente.getNumero()));
            st.setString(7, cliente.getCep());
            st.setString(8, cliente.getCidade());
            st.setString(9, cliente.getUf());
            
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
