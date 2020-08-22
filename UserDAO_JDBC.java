package biz.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import biz.user.vo.UserVO;
import util.JDBCUtil;

@Component("jdbc")
public class UserDAO_JDBC implements UserDAO{

	@Override
	public UserVO login(String id, String pw) {
		 System.out.println("JDBC 기반 연동 ");

		 String sql = "select * from userinfo where userid=? and userpwd = ?";

		 Connection con = null;
		 PreparedStatement ps = null;
		 ResultSet rs = null;
		 
		 UserVO vo = null;
		 try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);
			//ps. ? 세팅
			ps.setString(1, id);
			ps.setString(2, pw);
			//실행
			rs = ps.executeQuery();
			//결과값 핸들링
			while(rs.next()) {
				vo = new UserVO();
				vo.setAddress(rs.getString("address"));
				vo.setEmail(rs.getString("email"));
				vo.setPhone(rs.getString("phone"));
				vo.setUserid(rs.getString("userid"));
				vo.setUsername(rs.getString("username"));
				vo.setUserpwd(rs.getString("userpwd"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}finally {
		    JDBCUtil.close(rs, ps, con);	
		}
		 
		 return vo;
	}

	@Override
	public int addUser(UserVO user) throws Exception {
		String sql = 
		"insert into userinfo (userid, username, userpwd, email, phone,address) "+
				" values (?, ?, ?, ?, ?, ?)";
				 		
		 Connection con = null;
		 PreparedStatement ps = null;
		 ResultSet rs = null;
		 int  row =0;
		 try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);
			//ps. ? 세팅
			ps.setString(1, user.getUserid());
			ps.setString(2, user.getUsername());
			ps.setString(3, user.getUserpwd());
			ps.setString(4, user.getEmail());
			ps.setString(5, user.getPhone());
			ps.setString(6, user.getAddress());
			
			// 실행  //결과값 핸들링
			row = ps.executeUpdate();
			//실행
			//결과값 핸들링
			 
			 
		} catch (Exception e) {
			System.out.println(e);
		}finally {
		    JDBCUtil.close(rs, ps, con);	
		}
		return row;
	}

	@Override
	public UserVO getUser(String userid) {
		 String sql = "select * from userinfo where userid = ?";
		 Connection con = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			int  row =0;
			UserVO vo = null;
			
			try {
				con = JDBCUtil.getConnection();
				ps = con.prepareStatement(sql);
				
				// ? 세팅
				ps.setString(1, userid);
				// 실행
				rs = ps.executeQuery();
				
				//결과값 핸들링
				while(rs.next()) {
					vo = new UserVO();
					vo.setUserid(rs.getString("userid"));
	                vo.setPhone(rs.getString("phone"));
	                vo.setAddress(rs.getString("address"));
	                vo.setEmail(rs.getString("email"));
	                vo.setUsername(rs.getString("username"));
	                vo.setUserpwd(rs.getString("userpwd"));
				}

			} catch (Exception e) {
	            e.printStackTrace();
			}finally {
				JDBCUtil.close(rs, ps, con);
			}
			return vo;
	}

	@Override
	public List<UserVO> getUserList() {
		 System.out.println("JDBC 기반 연동 ");
		 String sql = "select * from userinfo ";
		 Connection con = null;
		 PreparedStatement ps = null;
		 ResultSet rs = null;
		 List<UserVO> list = new ArrayList<UserVO>();
		 try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);
			//ps. ? 세팅
			//실행
			rs = ps.executeQuery();
			//결과값 핸들링
			while(rs.next()) {
				UserVO vo = new UserVO();
				vo.setAddress(rs.getString("address"));
				vo.setEmail(rs.getString("email"));
				vo.setPhone(rs.getString("phone"));
				vo.setUserid(rs.getString("userid"));
				vo.setUsername(rs.getString("username"));
				vo.setUserpwd(rs.getString("userpwd"));
				list.add(vo);
			}
		} catch (Exception e) {
			System.out.println(e);
		}finally {
		    JDBCUtil.close(rs, ps, con);	
		}
		return list;
	}

	@Override
	public int updateUser(UserVO user) {
		 String sql = "update userinfo set email=?,phone=?,address=? "
		 		+ " where  userid  = ? ";

		 Connection con = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			int  row =0;
			UserVO vo = null;
			try {
				con = JDBCUtil.getConnection();
				ps = con.prepareStatement(sql);
				
				// ? 세팅
				ps.setString(1, user.getEmail());
				ps.setString(2, user.getPhone());
				ps.setString(3, user.getAddress());
				ps.setString(4, user.getUserid());
				// 실행		//결과값 핸들링
				row = ps.executeUpdate();
			} catch (Exception e) {
	            e.printStackTrace();
			}finally {
				JDBCUtil.close(rs, ps, con);
			}
			
			return row;
	}

	@Override
	public int removeUser(String userid) {
		 String sql = "delete from userinfo where  userid  = ? ";

		 Connection con = null;
			PreparedStatement ps = null;
			ResultSet rs = null;
			int  row =0;
			UserVO vo = null;
			
			try {
				con = JDBCUtil.getConnection();
				ps = con.prepareStatement(sql);
				
				// ? 세팅
				ps.setString(1, userid);
				// 실행	//결과값 핸들링
				row = ps.executeUpdate();
			} catch (Exception e) {
	            e.printStackTrace();
			}finally {
				JDBCUtil.close(rs, ps, con);
			}
			
			return row;
	}

	@Override
	public List<UserVO> searchUser(String condition, String keyword) {
		String sql = "select * from userinfo where upper("+ condition+") like  '%'||?||'%'";
		
		 Connection con = null;
		 PreparedStatement ps = null;
		 ResultSet rs = null;
		 List<UserVO> list = new ArrayList<UserVO>();
		 try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql);
			//ps. ? 세팅
			ps.setString(1, keyword.toUpperCase());
			//실행
			rs = ps.executeQuery();
			//결과값 핸들링
			while(rs.next()) {
				UserVO vo = new UserVO();
				vo.setAddress(rs.getString("address"));
				vo.setEmail(rs.getString("email"));
				vo.setPhone(rs.getString("phone"));
				vo.setUserid(rs.getString("userid"));
				vo.setUsername(rs.getString("username"));
				vo.setUserpwd(rs.getString("userpwd"));
				list.add(vo);
			}
		} catch (Exception e) {
			System.out.println(e);
		}finally {
		    JDBCUtil.close(rs, ps, con);	
		}
		return list;
	}

	@Override
	public List<UserVO> getUserListByName() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UserVO> getUserListById() {
		// TODO Auto-generated method stub
		return null;
	}

}





