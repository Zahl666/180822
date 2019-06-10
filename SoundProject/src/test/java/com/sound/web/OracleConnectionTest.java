package com.sound.web;

import java.sql.DriverManager;
import java.sql.Connection;

import org.junit.Test;

public class OracleConnectionTest {
	
	private static final String DRIVER = "oracle.jdbc.driver.OracleDriver";
	
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:orcl";
	
	private static final String USER = "scott";
	
	private static final String PASSWORD = "1234";
	
	@Test
	public void testConnection() throws Exception {
		Class.forName(DRIVER);
		try(Connection conn = DriverManager.getConnection(URL, USER, PASSWORD)){
			System.out.println(conn);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
