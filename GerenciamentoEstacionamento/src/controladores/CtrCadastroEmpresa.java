package controladores;

import banco.CadastrarEmpresa;
import banco.comandos.Conexao;
import java.io.IOException;
import java.util.ArrayList;
import objetos.Endereco;
import objetos.Telefone;

/**
 *
 * @author marce
 */
public class CtrCadastroEmpresa {
    
    private static String nomeRazaoSocial;
    private static String cpfCnpj;
    private static ArrayList<Endereco> enderecos;
    private static ArrayList<String> emails;
    private static ArrayList<Telefone> telefones;
    
    public static void cadastroInfoBasica(
        String cadastroNomeRazaoSocial, 
        String cadastroCpfCnpj, 
        ArrayList<String> cadastroEmails,
        ArrayList<Telefone> cadastroTelefones
    ){
        nomeRazaoSocial = cadastroNomeRazaoSocial;
        cpfCnpj = cadastroCpfCnpj;
        emails = cadastroEmails;
        telefones = cadastroTelefones;
        
    }
    
    public static void cadastroInfoEndereco(ArrayList<Endereco> cadastroEnderecos){
        enderecos = cadastroEnderecos;
    }
    
    public static void cadastrarNovaEmpresa(){
        Conexao con = new Conexao();
        con.abrirConexao();
        
        CadastrarEmpresa.inerirNovaEmpresa(con, nomeRazaoSocial, cpfCnpj, emails, enderecos, telefones);
        
        con.fecharConexao();
    }

    public static Endereco buscarCep(String cep) {
        Endereco endereco = new Endereco();
        endereco.pesquisarEndereco(cep);

        return endereco;
    }
    
}
