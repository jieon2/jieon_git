package Recommendation;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class RecommendDB {
	
	private static RecommendDB instance =new RecommendDB();
	private Connection conn; // connection:db에접근하게 해주는 객체
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Statement ds; 

	
	public static RecommendDB getInstance() {
		return instance;
	}
	
	  private Connection getConnection() throws Exception {
	    	Connection conn=null;
	    	PreparedStatement pstmt=null;
	    	
	    	String jdbc_driver = "com.mysql.cj.jdbc.Driver";
	    	String jdbc_url  = "jdbc:mysql://localhost:3306/bdbjsp?characterEncoding=UTF-8&serverTimezone=UTC";
	    	
	    	
	    		try {
	    			Class.forName(jdbc_driver);
	    			conn=DriverManager.getConnection(jdbc_url,"root","1234");
	    			
	    		} catch (Exception e) {
	    			// TODO Auto-generated catch block
	    			e.printStackTrace();
	    		}
	    		
	    	 
	        return conn;
	    }
	
	public survey getData(String id){

		survey survey = null;
		   Connection conn = null;
	        PreparedStatement pstmt = null;
	        ResultSet rs = null;

	        try {
	            conn = getConnection();
	            pstmt = conn.prepareStatement("select * from survey where item0=?");
	            pstmt.setString(1,id);
	            rs = pstmt.executeQuery();

				if(rs.next()){
					survey = new survey();
					survey.setItem0(rs.getString("item0"));
					survey.setItem1(rs.getString("item1"));
					survey.setItem2(rs.getString("item2"));
					survey.setItem3(rs.getString("item3"));
					survey.setItem4(rs.getString("item4"));
					survey.setItem5(rs.getString("item5"));
					survey.setItem6(rs.getString("item6"));
					survey.setItem7(rs.getString("item7"));
					survey.setItem8(rs.getString("item8"));
					survey.setItem9(rs.getString("item9"));
					survey.setItem10(rs.getString("item10"));
					survey.setItem11(rs.getString("item11"));
					
				}
	        } catch(Exception ex) {
	            ex.printStackTrace();
	        } finally {
	            if (rs != null) try { rs.close(); } catch(SQLException ex) {}
	            if (pstmt != null) try { pstmt.close(); } catch(SQLException ex) {}
	            if (conn != null) try { conn.close(); } catch(SQLException ex) {}
	        }

		return survey;
	}
}
