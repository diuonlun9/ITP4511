/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import bean.UsersBean;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author lcshum
 */
public class db {

    private String url = "";
    private String username = "";
    private String password = "";

    public db(String url, String username, String password) {
        this.url = url;
        this.username = username;
        this.password = password;
    }

    public Connection getConnection() throws SQLException, IOException {
        try {
            //  System.setProperty("jdbc.drivers", "com.mysql.jdbc.Driver");
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(db.class.getName()).log(Level.SEVERE, null, ex);
        }
        return DriverManager.getConnection(url, username, password);
    }

//------------------------ USERS DB FUNCTION ------------------------//
        public boolean addUser(String username, String password, String role) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        boolean isSuccess = false;
        try {
            cnnct = getConnection();
            String preQueryStatement = "INSERT  INTO  users  VALUES  (?,?,?)";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            pStmnt.setString(1, username);
            pStmnt.setString(2, password);
            pStmnt.setString(3, role);
            int rowCount = pStmnt.executeUpdate();
            if (rowCount >= 1) {
                isSuccess = true;
            }
            pStmnt.close();
            cnnct.close();
        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return isSuccess;
    }

    public UsersBean queryUserByID(String id) {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;

        UsersBean ub = null;
        try {
            //1.  get Connection
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM  users WHERE userID=?";
            //2.  get the prepare Statement
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            //3. update the placehoder with id
            pStmnt.setString(1, id);
            ResultSet rs = null;
            //4. execute the query and assign to the result 
            rs = pStmnt.executeQuery();
            if (rs.next()) {
                ub = new UsersBean();
                // set the record detail to the customer bean
                ub = new UsersBean();
                ub.setUserid(rs.getInt(1));
                ub.setUsername(rs.getString(2));
                ub.setPassword(rs.getString(3));
                ub.setRole(rs.getString(4));
            }

            pStmnt.close();
            cnnct.close();
        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return ub;
    }
        public ArrayList queryUser() {
        Connection cnnct = null;
        PreparedStatement pStmnt = null;
        try {
            cnnct = getConnection();
            String preQueryStatement = "SELECT * FROM  users";
            pStmnt = cnnct.prepareStatement(preQueryStatement);
            //Statement s = cnnct.createStatement();
            ResultSet rs = pStmnt.executeQuery();

            ArrayList list = new ArrayList();

            while (rs.next()) {
                UsersBean cb = new UsersBean();
                cb.setUserid(rs.getInt(1));
                cb.setUsername(rs.getString(2));
                cb.setPassword(rs.getString(3));
                cb.setRole(rs.getString(4));
                list.add(cb);
            }
            return list;
        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        } finally {
            if (pStmnt != null) {
                try {
                    pStmnt.close();
                } catch (SQLException e) {
                }
            }
            if (cnnct != null) {
                try {
                    cnnct.close();
                } catch (SQLException sqlEx) {
                }
            }
        }
        return null;
    }
            public boolean isValidUser(String user, String pwd) {
        Connection cnnt = null;
        PreparedStatement pStmnt = null;
        boolean isValid = false;
        try {
            cnnt = getConnection();
            String preQueryStatement = "SELECT * FROM users WHERE username=? and password=?";
            pStmnt = cnnt.prepareStatement(preQueryStatement);
            pStmnt.setString(1, user);
            pStmnt.setString(2, pwd);
            ResultSet rs = null;
            rs = pStmnt.executeQuery();
            if (rs.next()) {
                isValid = true;
            }
            pStmnt.close();
            cnnt.close();
        } catch (SQLException ex) {
            while (ex != null) {
                ex.printStackTrace();
                ex = ex.getNextException();
            }
        } catch (IOException ex) {
            ex.printStackTrace();
        }
        return isValid;
    }
// ----------------------------------------------------------------------//
    
    
    
//------------------------ TRAINERS DB FUNCTION ------------------------//
    
// ---------------------------------------------------------------------//
    
    
    
    
//------------------------ GYM DB FUNCTION ------------------------//
    
// ----------------------------------------------------------------//
    
    
    
//------------------------ GYM_BOOKING DB FUNCTION ------------------------//
    
// ------------------------------------------------------------------------//
    
    
    
//------------------------ TRAININER_BOOKING DB FUNCTION ------------------------//
    
// ------------------------------------------------------------------------------//


}
