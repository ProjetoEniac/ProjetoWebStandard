<%@page language="java" import="java.sql.*" %>

<%

	// Cria as variaveis e armazena as informações digitadas pelo Usuário
	String nome  = request.getParameter("nome"); 
	String sobrenome = request.getParameter("sobrenome");
	String email = request.getParameter("email");
	String telefone = request.getParameter("numero");
	String orcamento = request.getParameter("orcamento");


	// Cria as variaveis contendo informações sobre o bando de dados
	String banco    = "almevest";
	String usuario  = "root";
	String senha    = "";
	String endereco = "jdbc:mysql://localhost:3306/"+banco;

	String driver   = "com.mysql.jdbc.Driver";

	//Carregar o Driver na memória
	Class.forName(driver);

	// Cria a variavel para a conexão com o Bando de dados
	Connection conexao;

	//Abrir a conexão com o bando
	conexao = DriverManager.getConnection(endereco,usuario,senha) ;


	//Cria o objeto Statement
	Statement stm = conexao.createStatement() ;

	String sql = "insert into contato (nome,sobrenome,email,numero,orcamento) values('"+nome+"','"+sobrenome+"'','"+email+"','"+numero+"','"+orcamento+"')"; 

	stm.executeUpdate(sql);

	conexao.close();
	stm.close();

	out.print("Realizado com sucesso!!!");
	out.print("<br/><br/>");
	out.print("<a href='orcamento.html'>Voltar</a>");

%>