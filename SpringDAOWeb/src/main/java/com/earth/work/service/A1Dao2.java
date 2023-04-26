package com.earth.work.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceUtils;
import org.springframework.stereotype.Repository;

@Repository
public class A1Dao2 {
	
	@Autowired
	DataSource ds;
	
	public int insert(int key, int value) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
//			conn = ds.getConnection();
			conn = DataSourceUtils.getConnection(ds);
			System.out.println("conn = " + conn);
			
			pstmt = conn.prepareStatement("insert into a1 values (?, ?)");		//쿼리문 작성
			
			pstmt.setInt(1, key);		// 값 세팅
			pstmt.setInt(2, value);		// 값 세팅
			
			return pstmt.executeUpdate();	//실행
						
		} catch (SQLException e) {e.printStackTrace();}	
		finally {
			close(pstmt);
			//트랜잭션 매니저가 판단해서 close 여부를 정함
			DataSourceUtils.releaseConnection(conn, ds);
		}
		
		return 0;
	
	}
	
	private void close(AutoCloseable...closeables) {
		for (AutoCloseable autoCloseable : closeables) {
			if (autoCloseable != null) try {autoCloseable.close();} catch (Exception e) {e.printStackTrace();}
		}		
	}
	
	public void deleteAll() throws SQLException {
		//Tx와 별개로 동작해야하므로 아래처럼 conn 생성함
		Connection conn = ds.getConnection();
		String sql = "delete from a1";
		PreparedStatement pstmt = conn.prepareStatement(sql);	
		pstmt.executeUpdate(sql);
		close(pstmt, conn);
	}
}






















