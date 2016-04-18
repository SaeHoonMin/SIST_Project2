package com.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.sql.*;
import javax.naming.*;
import javax.sql.DataSource;

public class userdao222 {
	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	private static userdao222 dao;

	public void getConnection() {
		try {
			// ������ġ�� ������ �´� ==> JNDI
			// Ž���⸦ ����
			Context init = new InitialContext();
			// JNDI�� �ʱ�ȭ
			Context c = (Context) init.lookup("java://comp/env");
			DataSource ds = (DataSource) c.lookup("jdbc/oracle");
			conn = ds.getConnection();
			/*
			 * ================ java://comp/env ============= conn jdbc/oracle
			 * =============
			 * 
			 * ================
			 */

		} catch (Exception ex) {
			System.out.println("getConnection() ���� : " + ex.getMessage());
		}
	}

	// ����Ŀ� ��ȯ (����)
	public void disConnection() {
		try {
			if (ps != null)
				ps.close();
			if (conn != null)
				conn.close();
		} catch (Exception ex) {
		}
	}

	public static userdao222 newInstance() {
		if (dao == null)
			dao = new userdao222();
		return dao;
	}

	// ȸ������
	public void insertUser(UserDTO d) {
		conn = null;
		ps = null;
		String sql = "";

		try {
			// Ŀ�ؼ� Ǯ�κ��� Ŀ�ؼ� �Ҵ�
			getConnection();
			sql = "INSERT INTO userdto VALUES(idno_sq.NEXTVAL,?,?,SYSDATE)";
			ps = conn.prepareStatement(sql);
			ps.setString(1, d.getEmail());
			ps.setString(2, d.getPwd());
			ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			disConnection();
		}
	}

	public int userCheck(String email, String pwd) throws Exception {
		rs = null;
		String sql = "";
		String dbpasswd = "";
		int x = -1;

		try {
			getConnection();
			sql = "select pwd from UserDTO where id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			rs = ps.executeQuery();

			if (rs.next()) {
				dbpasswd = rs.getString("pwd");
				if (dbpasswd.equals(pwd)) {
					x = 1;
				} else {
					x = 0;
				}
			} else {
				x = -1;
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			disConnection();
		}
		return x;
	}

	public UserDTO getUser(String email) throws Exception {
		conn = null;
		ps = null;
		rs = null;
		UserDTO dto = null;
		String sql = "";
		try {
			getConnection();
			sql = "select * from UserDTO where email=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			rs = ps.executeQuery();
			if (rs.next()) {
				dto = new UserDTO();
				dto.setNo(rs.getInt("no"));
				;
				dto.setEmail(rs.getString("email"));
				dto.setPwd(rs.getString("pwd"));
				dto.setJoindate(rs.getDate("joindate"));
			}
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			disConnection();
		}

		return dto;
	}

	public void updateUser(UserDTO d) throws Exception {
		conn = null;
		ps = null;
		String sql = null;
		try {
			getConnection();
			sql = "UPDATE UserDTO set pwd=? where id=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, d.getPwd());
			ps.executeQuery();

		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			disConnection();
		}
	}

	public void deleteUser(String email) throws Exception {
		conn = null;
		ps = null;
		String sql = null;
		try {
			getConnection();
			sql = "DELETE from UserDTO where email=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			ps.executeQuery();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			disConnection();
		}
	}
	//�̸��� �ߺ�üũ ���
	public int confirmEmail(String email) throws Exception {
		conn = null;
		ps = null;
		rs = null;
		String sql = "";
		int x = -1;
		try {
			getConnection();
			sql = "SELECT * FROM UserDTO where email=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			rs = ps.executeQuery();
			if (rs.next()) {
				//���̵� �ֵ�
				x = 1;
			} else {
				//���̵� ����
				x = 0;
			}

		} catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			disConnection();
		}
		return x;
	}

	// �α��� ���
	public String isLogin(String email, String pwd) {
		String result = "";
		try {
			getConnection();
			// ID�� ���翩�� Ȯ��
			String sql = "SELECT COUNT(*) FROM userDTO WHERE email=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, email);
			rs = ps.executeQuery();
			rs.next();
			int count = rs.getInt(1);
			rs.close();
			ps.close();
			if (count == 0) {
				result = "NOID";
			} else {
				sql = "SELECT email,pwd FROM userdto WHERE email=?";
				ps = conn.prepareStatement(sql);
				ps.setString(1, email);
				rs = ps.executeQuery();
				rs.next();
				String db_email = rs.getString(1);
				String db_pwd = rs.getString(2);
				// Password �˻�
				if (pwd.equals(db_pwd)) {
					// Login
					result = db_email;
				} else {
					// password�� �ٸ���
					result = "NOPWD";
				}
			}
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		} finally {
			disConnection();
		}
		return result;
	}
}
