package live.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DB.DBConnect;
import VO.LiveVO;

public class liveDaoImpl implements liveDao{
	
	private DBConnect db;
	
	public liveDaoImpl() {
		db = DBConnect.getInstance();
	}

	@Override
	public void insert(LiveVO l) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "insert into live values(live_num.nextval,?,sysdate,?,?,?,?)";
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, l.getId());
			pstmt.setString(2, l.getTitle());
			pstmt.setString(3, l.getContent());
			pstmt.setString(4, l.getPath());
			pstmt.setInt(5, l.getType());
			
			String path = l.getPath();
			//System.out.println("where are path go? " + path);

			
			pstmt.executeUpdate();
			
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				pstmt.close();
				conn.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		
	}

	@Override
	public LiveVO select(String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		LiveVO vo = null;
		String sql = "select * from live where id=?";
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return new LiveVO(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getString(4), rs.getString(5), rs.getString(6),rs.getInt(7));
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				rs.close();
				pstmt.close();
				conn.close();
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public List selectAll(String id) {

		Connection conn = null;
		ResultSet rs = null;
		ArrayList<LiveVO> list = new ArrayList<LiveVO>();

		String sql = "select * from live where id = ? order by num";
		PreparedStatement pstmt = null;
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();

			
			while (rs.next()) {
				list.add(new LiveVO(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}


	@Override
	public void update(LiveVO l) {
		Connection conn = null;

		String sql = "update live set w_date=sysdate, title=?, "
		+ "content=? where num=?";

		PreparedStatement pstmt = null;
		try {
			conn = db.getConnection();

		
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, l.getTitle());
			pstmt.setString(2, l.getContent());
			pstmt.setInt(3, l.getNum());

			pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
		
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

	@Override
	public void delete(int num) {
		Connection conn = null;

		// db�� �� �� �����ϴ� sql
		String sql = "delete live where num=?";

		PreparedStatement pstmt = null;
		try {
			// Ŀ�ؼ� ��ü ȹ��
			conn = db.getConnection();

			// java���� sql�� �����ϴ� PreparedStatement��ü ����
			pstmt = conn.prepareStatement(sql);

			// sql�� ?�Ķ���� ��Ī
			pstmt.setInt(1, num);

			// sql����
			pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				// �ڿ� ��ȯ
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
	
	}

	@Override
	public LiveVO selectNum(int num) {
		Connection conn = null;
		ResultSet rs = null;
		LiveVO b = null;

		// �� �� �˻��ϴ� sql��
		String sql = "select * from live where num=?";
		PreparedStatement pstmt = null;
		try {
			// Ŀ�ؼ� ��ü ȹ��
			conn = db.getConnection();

			// java���� sql�� �����ϴ� PreparedStatement��ü ����
			pstmt = conn.prepareStatement(sql);

			// sql�� ?�Ķ���� ��Ī
			pstmt.setInt(1, num);

			// sql�����Ͽ� �˻��� ����� ResultSet�� ����
			rs = pstmt.executeQuery();

			// �˻� ����� �ִٸ� �÷� �� �ϳ��� �о Board ��ü�� �����Ͽ� ��ȯ
			if (rs.next()) {
					return new LiveVO(rs.getInt(1), rs.getString(2), rs.getDate(3),rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				// �ڿ� ��ȯ
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		return null;

	}
	
}
