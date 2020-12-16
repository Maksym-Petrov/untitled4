import App.HibernateSessionFactory;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class Data extends Config {
    private Scanner scanner = new Scanner(System.in);
    private Connection connection = null;
    private List<String> messages = new ArrayList<>();
    private StringBuilder string = new StringBuilder();
    private Session session = HibernateSessionFactory.getSession().openSession();
    public Data() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(HOST, USER, PASS);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public String connect(String login) {
        String result = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection(HOST, USER, PASS);
            PreparedStatement select = connection.prepareStatement("SELECT pass FROM users WHERE login=? ");
            select.setString(1, login);
            ResultSet list = select.executeQuery();
            System.out.println("Success");
            while (list.next()) {
                result = list.getString(1);

                //  System.out.println(list.getInt(1) + "  " + list.getString(2) + "  " + list.getString(3));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return result;
    }
    public  boolean auth(String username, String pass) {
        try {
            PreparedStatement select = connection.prepareStatement("SELECT pass FROM users WHERE login = ?");
            select.setString(1,username);
            ResultSet set =select.executeQuery();
            while (set.next()){
                if (set.getString(1).equals(pass)){
                    return true;
                }
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return false;
    }
    public void insertNewMassage(String name, String message) {
        try {
            PreparedStatement insert = connection.prepareStatement("INSERT INTO messages (username , message)" + "VALUES(?,?)");
            insert.setString(1, name);
            insert.setString(2, message);
            insert.executeUpdate();
            System.out.println("Success Insert");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public boolean exists(String login) {
        try {
            PreparedStatement select = connection.prepareStatement("SELECT COUNT(login) FROM users WHERE users.login = ? ");
            select.setString(1,login);
            ResultSet set = select.executeQuery();
            while (set.next()){
               if (Integer.parseInt(set.getString(1))==0){
                   return true;
               }
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return false;
    }
    public void register(String login,String pass){
        try {
            PreparedStatement insert = connection.prepareStatement("INSERT INTO users (login , pass)" + "VALUES(?,?)");
            insert.setString(1, login);
            insert.setString(2, pass);
            insert.executeUpdate();
            System.out.println("Success Insert");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public StringBuilder firstRaws() {
        try {
            PreparedStatement select = connection.prepareStatement("SELECT * FROM messages ORDER BY id DESC LIMIT 15 ");
            ResultSet list = select.executeQuery();
            while (list.next()) {
          messages.add("["+list.getString(2)+"]:" + list.getString(3)+"\n");
            }
            for (int i=messages.size()-1; i>=0; i--){
                string.append(messages.get(i));
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return string;
      }
      public int getid (String login){
        int myid = 0;
        try {
            PreparedStatement select = connection.prepareStatement("SELECT id FROM users WHERE login = ?");
            select.setString(1,login);
            ResultSet set = select.executeQuery();
            while (set.next()){
                myid = set.getInt(1);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return myid;
      }
      public double getBalance (String login){
        double balance = 0;
        try {
            PreparedStatement select = connection.prepareStatement("SELECT balance FROM users WHERE login = ?");
            select.setString(1,login);
            ResultSet set = select.executeQuery();
            while (set.next()){
                balance = set.getDouble(1);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return balance;
    }
    public void transfer (int id, int uid, double balance,double ubalance){
        try {
            PreparedStatement first = connection.prepareStatement("UPDATE users SET balance = balance - ? WHERE id = ?");
            first.setDouble(1,ubalance);
            first.setInt(2,id);
            first.executeUpdate();
            PreparedStatement second = connection.prepareStatement("UPDATE users SET balance = balance + ? WHERE id = ?");
           second.setDouble(1,ubalance);
           second.setInt(2,uid);
            second.executeUpdate();

        }catch (Exception e){
            System.out.println(e);
        }
    }


}


