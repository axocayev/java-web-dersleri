/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package az.database;

import az.phonebook.model.User;
import java.io.Closeable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author anarx
 */
public class UserDao {

    public User getUserByPasswordAnLogin(String username,String password){
        User user=null;
        DataBase  base=new DataBase();
        Connection con=base.getConnection();
        System.out.println(username + "  "+password);
        try {
            PreparedStatement ps=con.prepareStatement("select * from lesson.users "
                    + " where username=? and password=? "
                    + " and is_active=1 ");
            ps.setString(1, username.trim());
            ps.setString(2, password.trim());
            ResultSet rs=ps.executeQuery();
            if(rs.next()){
                user=new User();
                user.setId(rs.getString("id"));
                user.setName(rs.getString("name"));
                user.setSurname(rs.getString("surname"));
                user.setUsername(rs.getString("username"));
                user.setIs_Active(rs.getString("is_active"));
                user.setStatus(rs.getString("status"));
                
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(UserDao.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        return user;
    }
    public static void main(String[] args) {
        System.out.println(new UserDao().getUserByPasswordAnLogin("axocayev", "123") );
    }
    
}
