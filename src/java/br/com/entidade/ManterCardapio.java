package br.com.entidade;

import br.com.controle.Prato;
import java.sql.SQLException;
import java.util.ArrayList;

public class ManterCardapio extends DAO {

    // Método que consulta os pratos no banco de dados de acordo com o id do estabelecimento
    public ArrayList<Prato> consultarPratosPorEstabelecimento(int idEstabelecimento) throws Exception {
        ArrayList<Prato> pratosEncontrados = new ArrayList<>();

        try {
            abrirBanco(); // Método herdado de DAO para abrir a conexão
            String query = "SELECT * FROM cardapios WHERE id_estabelecimento=?";
            pst = con.prepareStatement(query);
            pst.setInt(1, idEstabelecimento); // Define o valor do parâmetro idEstabelecimento na consulta
            rs = pst.executeQuery();

            while (rs.next()) {
                Prato pratoEncontrado = new Prato();
                pratoEncontrado.setIdPrato(rs.getInt("id_cardapio "));
                pratoEncontrado.setNomePrato(rs.getString("nome_prato"));
                pratoEncontrado.setDescricao(rs.getString("descricao"));
                pratoEncontrado.setPreco(rs.getDouble("preco"));
                pratoEncontrado.setCategoria(rs.getString("categoria"));
                
                pratosEncontrados.add(pratoEncontrado);
            }

            if (pratosEncontrados.isEmpty()) {
                System.out.println("Nenhum prato encontrado para o estabelecimento informado!");
            }

        } catch (SQLException e) {
            System.out.println("Erro ao consultar pratos: " + e.getMessage());
        } finally {
            // Fechar os recursos de banco de dados utilizando o método da classe DAO
            fecharBanco();
        }

        return pratosEncontrados;
    }
}
