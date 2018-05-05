package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Booking;

public class BookingDAO {

	public static void saveBooking(Booking booking) {

		Connection connection = DBConnection.getConnection();

		String insert = "Insert INTO booking (customer_email, expert_email, timing, charge, location, status) VALUES(?,?,?,?,?,?)";

		PreparedStatement ps;
		try {
			ps = connection.prepareStatement(insert);
			ps.setString(1, booking.getCustomerEmail());
			ps.setString(2, booking.getExpertEmail());
			ps.setString(3, booking.getTiming());
			ps.setFloat(4, booking.getCharge());
			ps.setString(5, booking.getLocation());
			ps.setString(6, booking.getStatus());

			ps.executeUpdate();

			ps.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public static List<Booking> getAllBookings() {

		Connection connection = DBConnection.getConnection();

		List<Booking> bookings = null;

		String select = "SELECT * FROM booking";

		PreparedStatement ps;
		try {
			ps = connection.prepareStatement(select);

			ResultSet rs = ps.executeQuery();

			bookings = extractBookingFromResultSet(rs);

			rs.close();
			ps.close();
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return bookings;
	}

	public static Booking getAllBookingById(int id) {

		Connection connection = DBConnection.getConnection();

		Booking booking = new Booking();

		String select = "SELECT * FROM booking WHERE id=?";

		PreparedStatement ps;
		try {
			ps = connection.prepareStatement(select);

			ResultSet rs = ps.executeQuery();

			ps.setInt(1, id);

			List<Booking> bookings = extractBookingFromResultSet(rs);

			if (!bookings.isEmpty()) {
				booking = bookings.get(0);
			}

			rs.close();
			ps.close();
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return booking;

	}

	public static List<Booking> getAllCustomerBookings(String customerEmail) {

		Connection connection = DBConnection.getConnection();

		List<Booking> bookings = null;

		String select = "SELECT * FROM booking WHERE customer_email=?";

		try {
			PreparedStatement ps = connection.prepareStatement(select);

			ps.setString(1, customerEmail);

			ResultSet rs = ps.executeQuery();

			bookings = extractBookingFromResultSet(rs);

			rs.close();
			ps.close();
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return bookings;
	}

	public static List<Booking> getAllExpertBookings(String expertEmail) {

		Connection connection = DBConnection.getConnection();

		List<Booking> bookings = null;

		String select = "SELECT * FROM booking WHERE expert_email=?";

		try {
			PreparedStatement ps = connection.prepareStatement(select);

			ps.setString(1, expertEmail);

			ResultSet rs = ps.executeQuery();

			bookings = extractBookingFromResultSet(rs);

			rs.close();
			ps.close();
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return bookings;
	}

	private static List<Booking> extractBookingFromResultSet(ResultSet rs)
			throws Exception {

		List<Booking> bookings = new ArrayList<Booking>();

		while (rs.next()) {

			Booking booking = new Booking();

			booking.setCharge(rs.getFloat("charge"));
			booking.setCustomerEmail(rs.getString("customer_email"));
			booking.setExpertEmail(rs.getString("expert_email"));
			booking.setId(rs.getInt("id"));
			booking.setLocation(rs.getString("location"));
			booking.setStatus(rs.getString("status"));
			booking.setTiming(rs.getString("timing"));

			bookings.add(booking);

		}

		return bookings;
	}
}
