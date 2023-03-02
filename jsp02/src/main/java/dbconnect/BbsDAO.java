package dbconnect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BbsDAO {
	String url = "jdbc:mysql://localhost:3306/study";
	String user = "root";
	String password = "1234";
	Connection conn;
	
	public BbsDAO() throws Exception {
		Class.forName("com.mysql.jdbc.Driver");
		System.out.println("1. 드라이버 설정 성공");
		
		conn = DriverManager.getConnection(url, user, password);
		System.out.println("2. DB 연결 성공");
	}
	
	public int create(BbsVO vo) {
		int result = 0;
		try {
			String sql = "insert into bbs value (?, ?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(sql);			
			ps.setString(1, vo.getId());
			ps.setString(2, vo.getTitle());
			ps.setString(3, vo.getWriter());
			ps.setString(4, vo.getContent());
			System.out.println("3. SQL문 생성 성공");
			
			result = ps.executeUpdate();
			if(result != 0) {
				System.out.println("데이터베이스에 저장 성공!");
			} else {
				System.out.println("** 데이터베이스에 저장 실패 **");
			}
			System.out.println("4. SQL문 전송 성공");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public ArrayList<BbsVO> list() {
		BbsVO vo = new BbsVO();
		ArrayList<BbsVO> list = new ArrayList<>();
		try {
			String sql = "select * from bbs";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				vo.setId(rs.getString(1));
				vo.setTitle(rs.getString(2));
				vo.setWriter(rs.getString(3));
				vo.setContent(rs.getString(4));
				list.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}
