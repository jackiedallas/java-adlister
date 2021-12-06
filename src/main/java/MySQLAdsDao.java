import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;
import com.mysql.cj.jdbc.Driver;


public class MySQLAdsDao implements Ads {
    private Connection connection;
    private Config config = new Config();
//    public MySQLAdsDao(String url, String user, String password) {};
    public MySQLAdsDao() {

        try {
//            DriverManager.registerDriver(new Driver());
            new Driver();
            this.connection = DriverManager.getConnection (
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

    }



    public List<Ad> all() throws SQLException {
        String selectQuery = "SELECT * FROM ads";

        ResultSet resultSet = null;

        Statement statement = connection.createStatement();
        resultSet = statement.executeQuery(selectQuery);

        List<Ad> ads = new ArrayList<>();

        while (resultSet.next()) {
            System.out.printf("""
                    %s
                    %s
                    %s
                    """, resultSet.getLong("id"), resultSet.getString("title"), resultSet.getString("description"));
        }
        return null;
    }

    @Override
    public Long insert(Ad ad) {
        return null;
    }

};
