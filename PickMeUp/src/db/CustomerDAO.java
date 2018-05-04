package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Customer;

public class CustomerDAO {

	public static void insertCustomer(Customer customer) throws SQLException {

		Connection connection = DBConnection.getConnection();

		String insert = "Insert INTO customer (name, email, contact, address, pincode, password, type) VALUES(?,?,?,?,?,?,?)";

		PreparedStatement ps = connection.prepareStatement(insert);

		ps.setString(1, customer.getName());
		ps.setString(2, customer.getEmail());
		ps.setString(3, customer.getContact());
		ps.setString(4, customer.getAddress());
		ps.setString(5, customer.getPincode());
		ps.setString(6, customer.getPassword());
		ps.setString(7, "customer");

		ps.executeUpdate();

		ps.close();
		connection.close();

	}

	public static void updateCustomer(Customer customer) {

		Connection connection = DBConnection.getConnection();

		try {

			String insert = "UPDATE customer SET name=?, contact=?, address=?, pincode=?, password=? WHERE id=?";

			PreparedStatement ps = connection.prepareStatement(insert);

			ps.setString(1, customer.getName());
			ps.setString(2, customer.getContact());
			ps.setString(3, customer.getAddress());
			ps.setString(4, customer.getPincode());
			ps.setString(5, customer.getPassword());

			ps.setInt(6, customer.getId());

			ps.executeUpdate();

			ps.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public static void deleteCustomer(int customerId) {

		Connection connection = DBConnection.getConnection();

		try {

			String delete = "DELETE FROM customer WHERE id=?";

			PreparedStatement ps = connection.prepareStatement(delete);

			ps.setInt(1, customerId);

			ps.executeUpdate();

			ps.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public static Customer getCustomer(int customerId) {
		return null;
	}

	public static Customer getCustomer(String email, String password) {

		Connection connection = DBConnection.getConnection();

		Customer customer = null;

		try {

			String insert = "SELECT * FROM customer WHERE email=? AND password=?";

			PreparedStatement ps = connection.prepareStatement(insert);

			ps.setString(1, email);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				customer = new Customer();

				customer.setId(rs.getInt("id"));
				customer.setAddress(rs.getString("address"));
				customer.setContact(rs.getString("contact"));
				customer.setEmail(rs.getString("email"));
				customer.setName(rs.getString("name"));
				customer.setPassword(rs.getString("password"));
				customer.setPincode(rs.getString("pincode"));
				customer.setType(rs.getString("type"));
			}

			rs.close();
			ps.close();
			connection.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return customer;
	}

	public static List<Customer> getAllCustomers() {

		Connection connection = DBConnection.getConnection();

		List<Customer> customers = new ArrayList<Customer>();

		Customer customer;
		try {

			String insert = "SELECT * FROM customer WHERE type=?";

			PreparedStatement ps = connection.prepareStatement(insert);
			
			ps.setString(1, "customer");

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				customer = new Customer();

				customer.setId(rs.getInt("id"));
				customer.setAddress(rs.getString("address"));
				customer.setContact(rs.getString("contact"));
				customer.setEmail(rs.getString("email"));
				customer.setName(rs.getString("name"));
				customer.setPassword(rs.getString("password"));
				customer.setPincode(rs.getString("pincode"));
				customer.setType(rs.getString("type"));

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
