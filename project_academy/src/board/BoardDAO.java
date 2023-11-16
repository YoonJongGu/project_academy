package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class BoardDAO {
	
	private static final BoardDAO instance = new BoardDAO();
	
	public static BoardDAO getInstance() {
		return instance;
	}
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private DataSource ds;
	private Context init;
	
	private BoardDAO() {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
			
		} catch(NamingException e) {
			System.out.println("생성자 예외 : " + e);
			
		} finally {
			try {
				if(conn != null) conn.close();
			} catch(SQLException e) {}			
		}
	}
	
	private void close() {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch(Exception e) {}
	}
	
	public ArrayList<HashMap<String, Object>> selectNotice() {
		ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		String sql = "select" + 
				" A.idx, B.username, A.title, A.writeDate, A.views" + 
				" from board A" + 				 
				" join member B" + 
				" on A.member_idx=B.idx" +
				" where A.boardType='N'" +
				" order by to_char(A.writeDate,'yyyy-mm-dd hh24:mi:ss') desc";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put("idx", rs.getInt("idx"));
				map.put("username", rs.getString("username"));
				map.put("title", rs.getString("title"));
				map.put("writeDate", rs.getDate("writeDate"));
				map.put("views", rs.getString("views"));
				list.add(map);			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
	}

	public ArrayList<HashMap<String, Object>> selectQuestions() {
		ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		String sql = "select" + 
				" A.idx, B.username, A.title, A.writeDate, A.views" + 
				" from board A" + 				 
				" join member B" + 
				" on A.member_idx=B.idx" +
				" where A.boardType='Q'" +
				" order by to_char(A.writeDate,'yyyy-mm-dd hh24:mi:ss') desc";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put("idx", rs.getInt("idx"));
				map.put("username", rs.getString("username"));
				map.put("title", rs.getString("title"));
				map.put("writeDate", rs.getDate("writeDate"));
				map.put("views", rs.getString("views"));
				list.add(map);			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
	}

	public ArrayList<HashMap<String, Object>> selectFAQ() {
		ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
		String sql = "select" + 
				" A.idx, B.username, A.title, A.writeDate, A.views" + 
				" from board A" + 				 
				" join member B" + 
				" on A.member_idx=B.idx" +
				" where A.boardType='F'" +
				" order by to_char(A.writeDate,'yyyy-mm-dd hh24:mi:ss') desc";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put("idx", rs.getInt("idx"));
				map.put("username", rs.getString("username"));
				map.put("title", rs.getString("title"));
				map.put("writeDate", rs.getDate("writeDate"));
				map.put("views", rs.getString("views"));
				list.add(map);			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
	}
	
	public void viewsCount(int idx) {		
		String sql = "update board set views=views+1 where idx=" + idx;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}		
		
	}
	
	public HashMap<String, Object> selectOne(int idx) {
		HashMap<String, Object> map = null;
		String sql = "select" + 
				" B.userid, B.username, A.title, A.writeDate, A.contents" + 
				" from board A" + 
				" join member B" + 
				" on A.member_idx=B.idx" + 
				" where A.idx=" + idx;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				map = new HashMap<String, Object>();
				map.put("userid", rs.getString("userid"));
				map.put("username", rs.getString("username"));
				map.put("title", rs.getString("title"));
				map.put("writeDate", rs.getDate("writeDate"));
				map.put("contents", rs.getString("contents"));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return map;
	}
	
	public int insert(BoardDTO ob) {
		int row = 0;
		String sql = "insert into board "
				+ "(member_idx, boardType, title, contents) "
				+ "values (?, ?, ?, ?)";		
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, ob.getMember_idx());
			pstmt.setString(2, ob.getBoardType());
			pstmt.setString(3, ob.getTitle());
			pstmt.setString(4, ob.getContents());
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			close();
		}		
		return row;
	}

	public int modify(BoardDTO ob) { 
		int row = 0;
		String sql = "update board set title=?, contents=? where idx=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ob.getTitle());
			pstmt.setString(2, ob.getContents());
			pstmt.setInt(3, ob.getIdx());
			row = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}		
		
		return row;
	}
	
	public int delete(int idx) {
		int row = 0;
		String sql = "delete board where idx=" + idx;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return row;
	}
}
