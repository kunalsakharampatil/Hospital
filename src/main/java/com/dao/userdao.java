package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.user;

public class userdao {

	private Connection con;

	public userdao(Connection con) {
		super();
		this.con = con;
	}

	public boolean register(user u) {
		boolean f = false;

		try {
			String sql = "insert into kp3(fullname,email,password) values(?,?,?) ";

			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, u.getFullname());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public user login(String em, String psw) {
		user u = null;

		try {
			String sql = "select * from kp3 where email=? and password=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, em);
			ps.setString(2, psw);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				u = new user();
				u.setId(rs.getInt(1));
				u.setFullname(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setPassword(rs.getString(4));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return u;
	}
}
