package enrolment;

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

import timetable.TimeTableDTO;

public class EnrolmentDAO {
	public static final EnrolmentDAO instance = new EnrolmentDAO();
	
	public static EnrolmentDAO getInstance() {
		return instance;
	}	
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	private DataSource ds;
	private Context init;
	
	private EnrolmentDAO() {
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
		
	public ArrayList<TimeTableDTO> selectTimetable() {
		ArrayList<TimeTableDTO> list = new ArrayList<TimeTableDTO>();				
		String sql = "select * from timetable where timeyear=2022 and timemonth=12 order by lessontime";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
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
	
	public int insert(int member_idx, int timetable_idx) {
		int row = 0;
		String sql = "insert into enrolment (member_idx, timetable_idx) values (?, ?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, member_idx);
			pstmt.setInt(2, timetable_idx);
			row = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}		
		
		return row;
		
	}
	
	public ArrayList<HashMap<String, Object>> selectMyList(int member_idx) {
		ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String,Object>>();
		String sql = "select" + 
				" A.idx, C.lesson, C.room, C.week, C.lessontime, C.teacher" + 
				" from enrolment A" +				 
				" join member B" + 
				" on A.member_idx=B.idx" +				 
				" join timetable C" + 
				" on A.timetable_idx=C.idx" +			 
				" where B.idx=" + member_idx;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put("idx", rs.getInt("idx"));
				map.put("lesson", rs.getString("lesson"));
				map.put("room", rs.getString("room"));
				map.put("week", rs.getString("week"));
				map.put("lessonTime", rs.getString("lessonTime"));
				map.put("teacher", rs.getString("teacher"));
				list.add(map);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return list;
		
	}

	public int delete(int idx) {
		int row = 0;
		String sql = "delete enrolment where idx=" + idx;
		
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
