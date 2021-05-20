<%@page language="java" import="java.sql.*" %>

<%

	// Cria as variaveis e armazena as informações digitadas pelo Usuário
	String vnome  = request.getParameter("txtnome");
	String vemail = request.getParameter("txtemail");
	String vtelefone = request.getParameter("txtelefone");
	String vorcamento = request.getParameter("txtorcamento");


	// Cria as variaveis contendo informações sobre o bando de dados
	String banco    = "projeto";
	String usuario  = "root";
	String senha    = "";
	String endereco = "jdbc:mysql://localhost:3306/" + banco;

	String driver   = "com.mysql.jdbc.Driver";

	//Carregar o Driver na memória
	Class.forName(driver);

	// Cria a variavel para a conexão com o Bando de dados
	Connection conexao;

	//Abrir a conexão com o bando
	conexao = DriverManager.getConnection(endereco,usuario,senha) ;


	//Cria o objeto Statement
	Statement stm = conexao.createStatement() ;

	String sql = "insert into orcamentos (nome,email,telefone,orcamento) values('"+vnome+"','"+vemail+"','"+vtelefone+"','"+vorcamento+"')"; 

	stm.executeUpdate(sql);

	conexao.close();
	stm.close();

	out.print("Contato realizado com sucesso!!!");
	out.print("<br/>");
	out.print("Em breve Retornaremos o Contato!!!");
	out.print("<br/><br/>");
	out.print("<a href='orcamento.html'>Voltar</a>");

%>