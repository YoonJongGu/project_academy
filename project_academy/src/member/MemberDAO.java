package member;

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

public class MemberDAO {
	
	private static final MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private DataSource ds;
	private Context init;
	
	private MemberDAO() {
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
	
	private MemberDTO mapping(ResultSet rs) throws SQLException {
		MemberDTO dto = new MemberDTO();
		dto.setIdx(rs.getInt("idx"));
		dto.setUsertype(rs.getString("usertype"));
		dto.setUserid(rs.getString("userid"));
		dto.setUserpw(rs.getString("userpw"));
		dto.setUsername(rs.getString("username"));
		dto.setBirthDate(rs.getString("birthDate"));
		dto.setGender(rs.getString("gender"));
		dto.setEmail(rs.getString("email"));
		dto.setJoinDate(rs.getDate("joinDate"));
		dto.setPhoneNumber(rs.getString("phoneNumber"));
		return dto;
	}

	private void close() {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch(Exception e) {}
	}
	
	public ArrayList<MemberDTO> selectList() {
		ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
		String sql = "select * from member where usertype!=? order by idx";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "A");
			rs = pstmt.executeQuery();
			
			while(rs.next()) {				
				list.add(mapping(rs));				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			close();
		}
		return list;
	}
	
	public int insert(MemberDTO ob) {
		int row = 0;
		String sql = "insert into member "
				+ "(usertype, userid, userpw, username, birthDate, gender, email, phoneNumber) "
				+ "values (?, ?, ?, ?, ?, ?, ?, ?)";		
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ob.getUsertype());
			pstmt.setString(2, ob.getUserid());
			pstmt.setString(3, ob.getUserpw());
			pstmt.setString(4, ob.getUsername());
			pstmt.setString(5, ob.getBirthDate());
			pstmt.setString(6, ob.getGender());
			pstmt.setString(7, ob.getEmail());
			pstmt.setString(8, ob.getPhoneNumber());
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			close();
		}		
		return row;
	}

	public MemberDTO login(MemberDTO ob) {
		MemberDTO dto = null;
		String sql = "select * from member where usertype=? and userid=? and userpw=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ob.getUsertype());
			pstmt.setString(2, ob.getUserid());
			pstmt.setString(3, ob.getUserpw());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				dto = mapping(rs);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return dto;

	}

	public String findUserid(MemberDTO ob) {
		String userid = null;
		String sql = "select userid from member where usertype=? and username=? and phoneNumber=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ob.getUsertype());
			pstmt.setString(2, ob.getUsername());
			pstmt.setString(3, ob.getPhoneNumber());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				userid = rs.getString("userid");
			}
			
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return userid;		
	}

	public int findUserpw(MemberDTO ob) {
		int idx = -1;
		String sql = "select idx from member where usertype=? and userid=? and phoneNumber=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ob.getUsertype());
			pstmt.setString(2, ob.getUserid());
			pstmt.setString(3, ob.getPhoneNumber());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				idx = rs.getInt("idx");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return idx;
		
	}

	public int updateUserpw(int idx, String userpw) {
		int row = 0;
		String sql = "update member set userpw=? where idx=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userpw);
			pstmt.setInt(2, idx);
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}		
		return row;
	}
	
	public MemberDTO selectOne(int idx) {		
		MemberDTO dto = null;
		String sql = "select * from member where idx=" + idx;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				dto = new MemberDTO();
				dto.setIdx(rs.getInt("idx"));
				dto.setUsertype(rs.getString("usertype"));
				dto.setUserid(rs.getString("userid"));
				dto.setUserpw(rs.getString("userpw"));
				dto.setUsername(rs.getString("username"));
				dto.setBirthDate(rs.getString("birthDate"));
				dto.setGender(rs.getString("gender"));
				dto.setEmail(rs.getString("email"));
				dto.setJoinDate(rs.getDate("joinDate"));
				dto.setPhoneNumber(rs.getString("phoneNumber"));
			}					
			
		} catch (SQLException e) {			
			e.printStackTrace();
		} finally {
			close();
		}
		return dto;
	}
	
	public int modify(MemberDTO ob) {
		int row = 0;
		String sql = "update member set usertype=?, userpw=?, username=?, gender=?, email=?, phoneNumber=? "
				+ "where idx=" + ob.getIdx();
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,ob.getUsertype());
			pstmt.setString(2, ob.getUserpw());
			pstmt.setString(3, ob.getUsername());
			pstmt.setString(4, ob.getGender());
			pstmt.setString(5, ob.getEmail());
			pstmt.setString(6, ob.getPhoneNumber());
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
		String sql = "delete from member where idx=" + idx;
		
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
	
	public int passPw(int idx, String userpw) {
		int result = 0;
		String sql = "select count(*) as count from member where idx=? and userpw=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			pstmt.setString(2, userpw);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				if(rs.getString("count").equals("1")) {
					result = 1;
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}		
		return result;
	}
	
	public ArrayList<HashMap<String, Object>> statistics(String timeYear) {
		ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String,Object>>();
		
		String sql = "select \r\n" + 
				"    to_char(joindate,'yyyy') as year, to_char(joindate,'mm') as month, COUNT(*) as count\r\n" + 
				"        FROM member\r\n" + 
				"    where usertype='S' and to_char(joindate,'yyyy')=?\r\n" + 
				"    group by to_char(joindate,'yyyy'), to_char(joindate,'mm')\r\n" + 
				"    order by to_char(joindate,'yyyy')";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, timeYear);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put("year", rs.getString("year"));
				map.put("month", rs.getString("month"));
				map.put("count", rs.getInt("count"));
				list.add(map);
			}			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		return list;
	}
}
