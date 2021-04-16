<%@page language="java" import="java.sql.*" %>

<%

	// Cria as variaveis e armazena as informações digitadas pelo Usuário
	String vnome  = request.getParameter("txtnome") ; 
	int    vidade = Integer.parseInt( request.getParameter("txtidade") ) ;
	String vemail = request.getParameter( "txtemail") ;

	// Cria as variaveis contendo informações sobre o bando de dados
	String banco    = "aula" ;
	String usuario  = "root" ;
	String senha    = "" ;
	String endereco = "jdbc:mysql://localhost:3306/" + banco  ;

	String driver   = "com.mysql.jdbc.Driver" ;

	//Carregar o Driver na memória
	Class.forName( driver ) ;

	// Cria a variavel para a conexão com o Bando de dados
	Connection conexao ;

	//Abrir a conexão com o bando
	conexao = DriverManager.getConnection( endereco, usuario, senha ) ;


	//Cria o objeto Statement
	Statement stm = conexao.createStatement() ;

	String sql = "insert into cadastro (nome,idade,email) values( '" + vnome + "' , " + vidade + ",'" + vemail + "')" ;  

	stm.executeUpdate( sql ) ;

	conexao.close() ;
	stm.close() ;

	out.print("Cadastro realizado com sucesso!!!") ;
	out.print("<br/><br/>") ;
	out.print("<a href='cadastro.html'>Voltar</a>") ;

%>