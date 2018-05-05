package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Expert;

public class ExpertDAO {

	public static void insertExpert(Expert expert) throws SQLException {

		Connection connection = DBConnection.getConnection();

		String insert = "Insert INTO expert (name, email, contact, address, pincode, category,rate) VALUES(?,?,?,?,?,?,?)";

		PreparedStatement ps = connection.prepareStatement(insert);

		ps.setString(1, expert.getName());
		ps.setString(2, expert.getEmail());
		ps.setString(3, expert.getContact());
		ps.setString(4, expert.getAddress());
		ps.setString(5, expert.getPincode());
		ps.setString(6, expert.getCategory());
		ps.setFloat(7, expert.getRate());

		ps.executeUpdate();

		ps.close();
		connection.close();

	}

	public static void updateExpert(Expert expert) {

		Connection connection = DBConnection.getConnection();

		try {

			String insert = "UPDATE expert SET name=?, contact=?, address=?, pincode=?, category=?, rate=? WHERE id=?";

			PreparedStatement ps = connection.prepareStatement(insert);

			ps.setString(1, expert.getName());
			ps.setString(2, expert.getContact());
			ps.setString(3, expert.getAddress());
			ps.setString(4, expert.getPincode());
			ps.setString(5, expert.getCategory());
			ps.setFloat(6, expert.getRate());
			ps.setInt(7, expert.getId());

			ps.executeUpdate();

			ps.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public static void deleteExpert(int expertId) {

		Connection connection = DBConnection.getConnection();

		try {

			String delete = "DELETE FROM expert WHERE id=?";

			PreparedStatement ps = connection.prepareStatement(delete);

			ps.setInt(1, expertId);

			ps.executeUpdate();

			ps.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public static Expert getExpert(int expertId) {

		Connection connection = DBConnection.getConnection();

		Expert expert = null;

		try {

			String insert = "SELECT * FROM expert WHERE id=?";

			PreparedStatement ps = connection.prepareStatement(insert);

			ps.setInt(1, expertId);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				expert = new Expert();

				expert.setId(rs.getInt("id"));
				expert.setAddress(rs.getString("address"));
				expert.setContact(rs.getString("contact"));
				expert.setEmail(rs.getString("email"));
				expert.setName(rs.getString("name"));
				expert.setPincode(rs.getString("pincode"));
				expert.setCategory(rs.getString("category"));
				expert.setRate(rs.getFloat("rate"));
			}

			rs.close();
			ps.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return expert;
	}

	public static Expert getExpert(String email, String password) {

		Connection connection = DBConnection.getConnection();

		Expert expert = null;

		try {

			String insert = "SELECT * FROM expert WHERE email=? AND password=?";

			PreparedStatement ps = connection.prepareStatement(insert);

			ps.setString(1, email);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				expert = new Expert();

				expert.setId(rs.getInt("id"));
				expert.setAddress(rs.getString("address"));
				expert.setContact(rs.getString("contact"));
				expert.setEmail(rs.getString("email"));
				expert.setName(rs.getString("name"));
				expert.setPincode(rs.getString("pincode"));
				expert.setCategory(rs.getString("category"));
				expert.setRate(rs.getFloat("rate"));
			}

			rs.close();
			ps.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return expert;
	}

	public static List<Expert> getAllExperts() {

		Connection connection = DBConnection.getConnection();

		List<Expert> experts = new ArrayList<Expert>();


		try {

			String insert = "SELECT * FROM expert";

			PreparedStatement ps = connection.prepareStatement(insert);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				Expert expert = new Expert();

				expert.setId(rs.getInt("id"));
				expert.setAddress(rs.getString("address"));
				expert.setContact(rs.getString("contact"));
				expert.setEmail(rs.getString("email"));
				expert.setName(rs.getString("name"));
				expert.setPincode(rs.getString("pincode"));
				expert.setCategory(rs.getString("category"));
				
				expert.setRate(rs.getFloat("rate"));

				experts.add(expert);

			}

			rs.close();
			ps.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return experts;
	}

	public static List<Expert> getAllExpertsByPincode(String key, String pincode) {

		Connection connection = DBConnection.getConnection();

		List<Expert> experts = new ArrayList<Expert>();
		key = "'%" + key + "%'";
		Expert expert;
		try {

			String insert = "SELECT * FROM expert WHERE category LIKE " + key
					+ " AND pincode=?";

			PreparedStatement ps = connection.prepareStatement(insert);

			ps.setString(1, pincode);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				expert = new Expert();

				expert.setId(rs.getInt("id"));
				expert.setAddress(rs.getString("address"));
				expert.setContact(rs.getString("contact"));
				expert.setEmail(rs.getString("email"));
				expert.setName(rs.getString("name"));
				expert.setPincode(rs.getString("pincode"));
				expert.setCategory(rs.getString("category"));
				expert.setRate(rs.getFloat("rate"));

				experts.add(expert);

			}

			rs.close();
			ps.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return experts;
	}

}
