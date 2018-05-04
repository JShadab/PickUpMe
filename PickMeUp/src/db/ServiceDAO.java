package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import bean.ServiceDetails;

public class ServiceDAO {

	public static void insertExpert(ServiceDetails expert) throws SQLException {

		Connection connection = DBConnection.getConnection();

		String insert = "Insert INTO expert (name, email, contact, address, pincode, category) VALUES(?,?,?,?,?,?)";

		PreparedStatement ps = connection.prepareStatement(insert);

		ps.setString(1, expert.getName());
		ps.setString(2, expert.getEmail());
		ps.setString(3, expert.getContact());
		ps.setString(4, expert.getAddress());
		ps.setString(5, expert.getPincode());

		ps.executeUpdate();

		ps.close();
		connection.close();

	}

	public static void updateService(ServiceDetails expert) {

		Connection connection = DBConnection.getConnection();

		try {

			String insert = "UPDATE expert SET name=?, contact=?, address=?, pincode=?, category=? WHERE id=?";

			PreparedStatement ps = connection.prepareStatement(insert);

			ps.setString(1, expert.getName());
			ps.setString(2, expert.getContact());
			ps.setString(3, expert.getAddress());
			ps.setString(4, expert.getPincode());

			ps.setInt(6, expert.getId());

			ps.executeUpdate();

			ps.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public static void deleteService(int customerId) {
	}

	public static ServiceDetails getService(int customerId) {
		return null;
	}

	public static ServiceDetails getService(String email, String password) {

		Connection connection = DBConnection.getConnection();

		ServiceDetails customer = null;

		try {

			String insert = "SELECT * FROM expert WHERE email=? AND password=?";

			PreparedStatement ps = connection.prepareStatement(insert);

			ps.setString(1, email);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				customer = new ServiceDetails();

				customer.setId(rs.getInt("id"));
				customer.setAddress(rs.getString("address"));
				customer.setContact(rs.getString("contact"));
				customer.setEmail(rs.getString("email"));
				customer.setName(rs.getString("name"));
				customer.setPincode(rs.getString("pincode"));
			}

			rs.close();
			ps.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return customer;
	}

	public static List<ServiceDetails> getAllServices() {
		return null;
	}

}
