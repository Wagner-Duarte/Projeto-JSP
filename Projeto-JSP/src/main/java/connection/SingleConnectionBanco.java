package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class SingleConnectionBanco {
	
	private static String banco = "jdbc:postgresql://localhost:5432/projeto-jsp?autoReconnect=true";
	
	private static String user = "postgres";
	private static String senha = "21020519";
	private static Connection connection = null;
	
	
	public static Connection getConnection() {
		return connection;
	}
	
	static {
		connectDB();
	}
	
	
	public SingleConnectionBanco() {
		connectDB();
	}
	
	private static void connectDB() {
		
		try {
			
			if(connection == null) {
				Class.forName("org.postgresql.Driver");
				connection = DriverManager.getConnection(banco, user, senha);
				connection.setAutoCommit(false);
				// System.out.println(" conexao ok");
			}
			
		}catch (Exception e) {
			
			e.printStackTrace(); // mostar qualquer erro na conexao
		}
	}

}
