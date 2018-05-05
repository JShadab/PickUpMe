package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import bean.Feedback;

public class FeedbackDAO {

	public static void saveFeedback(Feedback feedback) {

		Connection connection = DBConnection.getConnection();

		String insert = "Insert INTO feedback (first_name, last_name, email, contact, message) VALUES(?,?,?,?,?)";

		PreparedStatement ps;
		try {
			ps = connection.prepareStatement(insert);
			ps.setString(1, feedback.getFirstName());
			ps.setString(2, feedback.getLastName());
			ps.setString(3, feedback.getEmail());
			ps.setString(4, feedback.getContact());
			ps.setString(5, feedback.getMessage());

			ps.executeUpdate();

			ps.close();
			connection.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public static List<Feedback> getAllFeedbacks() {

		Connection connection = DBConnection.getConnection();

		List<Feedback> feedbacks = null;

		String select = "SELECT * FROM feedback";

		PreparedStatement ps;
		try {
			ps = connection.prepareStatement(select);

			ResultSet rs = ps.executeQuery();

			feedbacks = extractBookingFromResultSet(rs);

			rs.close();
			ps.close();
			connection.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return feedbacks;
	}

	private static List<Feedback> extractBookingFromResultSet(ResultSet rs)
			throws Exception {

		List<Feedback> feedbacks = new ArrayList<Feedback>();

		while (rs.next()) {

			Feedback feedback = new Feedback();

			feedback.setContact(rs.getString("contact"));
			feedback.setEmail(rs.getString("email"));
			feedback.setMessage(rs.getString("message"));
			feedback.setFirstName(rs.getString("first_name"));
			feedback.setLastName(rs.getString("last_name"));
			feedback.setId(rs.getInt("id"));

			feedbacks.add(feedback);

		}

		return feedbacks;
	}
}
