package timetable;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class TimeTableDAO {

	public static final TimeTableDAO instance = new TimeTableDAO();
		
	public static TimeTableDAO getInstance() {
		return instance;
	}	
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private DataSource ds;
	private Context init;
	
	private TimeTableDAO() {
		try {
			init = new InitialContext();
			ds = (DataSource) init.lookup("java:comp/env/jdbc/oracle");
		} catch (NamingException e) {
			System.out.println("생성자 예외 : " + e);
		} finally {
			try {
				if (conn != null) {conn.close();}
					
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	private TimeTableDTO mapping(ResultSet rs) throws SQLException {
		TimeTableDTO dto = new TimeTableDTO();
		dto.setIdx(rs.getInt("idx"));
		dto.setWeek(rs.getString("week"));
		dto.setTimeYear(rs.getString("timeYear"));
		dto.setTimeMonth(rs.getString("timeMonth"));
		dto.setRoom(rs.getString("room"));
		dto.setLessonTime(rs.getString("lessonTime"));
		dto.setLesson(rs.getString("lesson"));
		dto.setTeacher(rs.getString("teacher"));
		
		return dto;
		
	}
	
	private void close() {
		try {
			if(rs != null) rs.close();
			if(pstmt != null) pstmt.close();
			if(conn != null) conn.close();
		} catch(Exception e) {}
	}
		
	public ArrayList<TimeTableDTO> selectListByDate(TimeTableDTO ob) {
		ArrayList<TimeTableDTO> list = new ArrayList<TimeTableDTO>();				
		String sql = "select * from timetable where week=? and timeyear=? and timemonth=?";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ob.getWeek());
			pstmt.setString(2, ob.getTimeYear());
			pstmt.setString(3, ob.getTimeMonth());
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
}
