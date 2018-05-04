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

		String insert = "Insert INTO expert (name, email, contact, address, pincode,  category) VALUES(?,?,?,?,?,?)";

		PreparedStatement ps = connection.prepareStatement(insert);

		ps.setString(1, expert.getName());
		ps.setString(2, expert.getEmail());
		ps.setString(3, expert.getContact());
		ps.setString(4, expert.getAddress());
		ps.setString(5, expert.getPincode());
		ps.setString(6, expert.getCategory());

		ps.executeUpdate();

		ps.close();
		connection.close();

	}

	public static void updateExpert(Expert expert) {

		Connection connection = DBConnection.getConnection();

		try {

			String insert = "UPDATE expert SET name=?, contact=?, address=?, pincode=?, category=? WHERE id=?";

			PreparedStatement ps = connection.prepareStatement(insert);

			ps.setString(1, expert.getName());
			ps.setString(2, expert.getContact());
			ps.setString(3, expert.getAddress());
			ps.setString(4, expert.getPincode());
			ps.setString(5, expert.getCategory());

			ps.setInt(6, expert.getId());

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

		Expert customer = null;

		try {

			String insert = "SELECT * FROM expert WHERE id=?";

			PreparedStatement ps = connection.prepareStatement(insert);

			ps.setInt(1, expertId);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				customer = new Expert();

				customer.setId(rs.getInt("id"));
				customer.setAddress(rs.getString("address"));
				customer.setContact(rs.getString("contact"));
				customer.setEmail(rs.getString("email"));
				customer.setName(rs.getString("name"));
				customer.setPincode(rs.getString("pincode"));
				customer.setCategory(rs.getString("category"));
			}

			rs.close();
			ps.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return customer;
	}

	public static Expert getExpert(String email, String password) {

		Connection connection = DBConnection.getConnection();

		Expert customer = null;

		try {

			String insert = "SELECT * FROM expert WHERE email=? AND password=?";

			PreparedStatement ps = connection.prepareStatement(insert);

			ps.setString(1, email);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				customer = new Expert();

				customer.setId(rs.getInt("id"));
				customer.setAddress(rs.getString("address"));
				customer.setContact(rs.getString("contact"));
				customer.setEmail(rs.getString("email"));
				customer.setName(rs.getString("name"));
				customer.setPincode(rs.getString("pincode"));
				customer.setCategory(rs.getString("category"));
			}

			rs.close();
			ps.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return customer;
	}

	public static List<Expert> getAllExperts() {

		Connection connection = DBConnection.getConnection();

		List<Expert> customers = new ArrayList<Expert>();

		Expert customer;
		try {

			String insert = "SELECT * FROM expert";

			PreparedStatement ps = connection.prepareStatement(insert);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				customer = new Expert();

				customer.setId(rs.getInt("id"));
				customer.setAddress(rs.getString("address"));
				customer.setContact(rs.getString("contact"));
				customer.setEmail(rs.getString("email"));
				customer.setName(rs.getString("name"));
				customer.setPincode(rs.getString("pincode"));
				customer.setCategory(rs.getString("category"));

				customers.add(customer);

			}

			rs.close();
			ps.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return customers;
	}

	public static List<Expert> getAllExpertsByPincode(String key, String pincode) {

		Connection connection = DBConnection.getConnection();

		List<Expert> customers = new ArrayList<Expert>();
		key = "'%" + key + "%'";
		Expert customer;
		try {

			String insert = "SELECT * FROM expert WHERE category LIKE " + key
					+ " AND pincode=?";

			PreparedStatement ps = connection.prepareStatement(insert);

			ps.setString(1, pincode);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				customer = new Expert();

				customer.setId(rs.getInt("id"));
				customer.setAddress(rs.getString("address"));
				customer.setContact(rs.getString("contact"));
				customer.setEmail(rs.getString("email"));
				customer.setName(rs.getString("name"));
				customer.setPincode(rs.getString("pincode"));
				customer.setCategory(rs.getString("category"));

				customers.add(customer);

			}

			rs.close();
			ps.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return customers;
	}

}
