/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
public class DBUtils {

    public static void insertUserAccount(Connection conn, UserAccount user) throws SQLException {
        String sql="insert into account(UserName,Gender,Password,id_account) values (?,?,?,?)";
        PreparedStatement pstm =conn.prepareStatement(sql);
        
        pstm.setString(1,user.getUserName());
        pstm.setString(2,user.getGender());
        pstm.setString(3,user.getPassword());
        pstm.setString(4,user.getId_account());
        
        pstm.executeUpdate();
    }

    public static UserAccount findUser(Connection conn, String userName, String password) throws SQLException {
        String sql="select e.UserName,e.Gender,e.Password,e.id_account from account e" + " where e.username=? and e.password=?";
        PreparedStatement pstm=conn.prepareStatement(sql);
        pstm.setString(1,userName);
        pstm.setString(2,password);
        ResultSet rs=pstm.executeQuery();
        
        if(rs.next()){
            UserAccount user=new UserAccount();
            user.setUserName(rs.getString("username"));
            user.setGender(rs.getString("gender"));
            user.setPassword(rs.getString("password"));
            user.setId_account(rs.getString("id_account"));
            return user;
        }
        return null;
    }
    public static List<UserPrice> selectUserPrice(Connection conn) throws SQLException{
        String sql= "Select p.idprice,p.price,p.hour,p.type,p.image from price p";
        PreparedStatement pstm=conn.prepareStatement(sql);
        ResultSet rs=pstm.executeQuery();
        List<UserPrice> list=new ArrayList<UserPrice>();
        while(rs.next()){
            String Idprice=rs.getString("idprice");
            String Price=rs.getString("price");
            String Hour=rs.getString("hour");
            String Type=rs.getString("type");
            String Image=rs.getString("image");
            UserPrice userprice=new UserPrice();
            userprice.setIdprice(Idprice);
            userprice.setPrice(Price);
            userprice.setHour(Hour);
            userprice.setType(Type);
            userprice.setImage(Image);
            list.add(userprice);
        }
        
        
        return list;
        
    }
    //Xoa Thuoc Tinh
    public static void deleteUserPrice(Connection conn, String idprice) throws SQLException{
        String sql = "delete from price where idprice = ?";
        PreparedStatement pstm=conn.prepareStatement(sql);
        pstm.setString(1,idprice);
        pstm.executeUpdate();
        
    }
    //Them Thuoc Tinh
    public static void insertUserPrice(Connection conn,String idprice,String price,String hour,String type,String image) throws SQLException{
        String sql= "insert into price values(?,?,?,?,?)";
        PreparedStatement pstm =conn.prepareStatement(sql);
        pstm.setString(1,idprice);
        pstm.setString(2,price);
        pstm.setString(3,hour);
        pstm.setString(4,type);
        pstm.setString(5, image);
        
        pstm.executeUpdate();
    }
    //Sua doi thuoc tinh
    public static UserPrice getUserPrice(Connection conn,String idprice) throws SQLException{
        String sql="select * from price where idprice=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, idprice);
        ResultSet rs=pstm.executeQuery();
        while(rs.next()){
            UserPrice usp=new UserPrice();
            usp.setIdprice(rs.getString("idprice"));
            usp.setPrice(rs.getString("price"));
            usp.setHour(rs.getString("hour"));
            usp.setType(rs.getString("type"));
            usp.setImage(rs.getString("image"));
            return usp;
        }
        return null;
    }
    public static void updateUserPrice(Connection conn,String idprice,String price,String hour,String type,String image)throws SQLException{
        String sql="update price set price=?, hour=?, type=?, image=? where idprice=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, price);
        pstm.setString(2, hour);
        pstm.setString(3, type);
        pstm.setString(4, image);
        pstm.setString(5, idprice);
        pstm.executeUpdate();
    }
     public static void insertUserBook(Connection conn, UserBook user) throws SQLException {
        String sql="insert into book(idbook,idname,name,email,date,hour,slot,type) values (?,?,?,?,?,?,?,?)";
        PreparedStatement pstm =conn.prepareStatement(sql);
        
        pstm.setString(1,user.getIdbook());
        pstm.setString(2, user.getIdname());
        pstm.setString(3,user.getName());
        pstm.setString(4,user.getEmail());
        pstm.setString(5,user.getDate());
        pstm.setString(6,user.getHour());
        pstm.setString(7,user.getSlot());
        pstm.setString(8,user.getType());
        
        pstm.executeUpdate();
    }
     public static List<UserBook> selectUserBook(Connection conn) throws SQLException{
        String sql= "Select b.idbook,b.idname,b.name,b.email,b.date,b.hour,b.slot,b.type from book b";
        PreparedStatement pstm=conn.prepareStatement(sql);
        ResultSet rs=pstm.executeQuery();
        List<UserBook> list=new ArrayList<UserBook>();
        while(rs.next()){
            String Idbook=rs.getString("idbook");
            String Idname=rs.getString("idname");
            String Name=rs.getString("name");
            String Email=rs.getString("email");
            String Date=rs.getString("date");
            String Hour=rs.getString("hour");
            String Slot=rs.getString("slot");
            String Type=rs.getString("type");
            UserBook userbook=new UserBook();
            userbook.setIdbook(Idbook);
            userbook.setIdname(Idname);
            userbook.setName(Name);
            userbook.setEmail(Email);
            userbook.setDate(Date);
            userbook.setHour(Hour);
            userbook.setSlot(Slot);
            userbook.setType(Type);
            list.add(userbook);
        }
        
        
        return list;
        
    }
     //Xoa Thuoc Tinh
    public static void deleteUserBook(Connection conn, String idbook) throws SQLException{
        String sql = "delete from book where idbook = ?";
        PreparedStatement pstm=conn.prepareStatement(sql);
        pstm.setString(1,idbook);
        pstm.executeUpdate();
        
    }
    public static UserBook getUserBook(Connection conn,String idbook,String idname,String name,String email,String date,String hour,String slot,String type) throws SQLException{
        String sql="select * from book where idbook=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, idbook);
        ResultSet rs=pstm.executeQuery();
        while(rs.next()){
            UserBook usb=new UserBook();
            usb.setIdbook(rs.getString("idbook"));
            usb.setIdname(rs.getString("idname"));
            usb.setName(rs.getString("name"));
            usb.setEmail(rs.getString("email"));
            usb.setDate(rs.getString("date"));
            usb.setHour(rs.getString("hour"));
            usb.setSlot(rs.getString("slot"));
            usb.setType(rs.getString("type"));
            return usb;
        }
        return null;
    }
    public static void updateUserBook(Connection conn,String idbook,String idname,String name,String email,String date,String hour,String slot,String type)throws SQLException{
        String sql="update book set idname=?, name=?, email=?, date=?, hour=?, slot=?, type=? where idbook=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, idname);
        pstm.setString(2, name);
        pstm.setString(3, email);
        pstm.setString(4, date);
        pstm.setString(5, hour);
        pstm.setString(6, slot);
        pstm.setString(7, type);
        pstm.setString(8, idbook);
        pstm.executeUpdate();
    }
    
    public static List<UserPrice> selectandsearchUserPrice(Connection conn,String price) throws SQLException{
        String sql= "SELECT * FROM lala.price where price like '%"+price+"%'";
        PreparedStatement pstm=conn.prepareStatement(sql);
  
        ResultSet rs=pstm.executeQuery();
        List<UserPrice> list=new ArrayList<UserPrice>();
        while(rs.next()){
            String Idprice=rs.getString("idprice");
            String Price=rs.getString("price");
            String Hour=rs.getString("hour");
            String Type=rs.getString("type");
            String Image=rs.getString("image");
            UserPrice userprice=new UserPrice();
            userprice.setIdprice(Idprice);
            userprice.setPrice(Price);
            userprice.setHour(Hour);
            userprice.setType(Type);
            userprice.setImage(Image);
            list.add(userprice);
        }
        
        
        return list;
        
    }

    public static List<UserBook> selectandsearchUserBook(Connection conn,String idbook) throws SQLException{
        String sql= "SELECT * FROM lala.book where idbook like '%"+idbook+"%'";
        PreparedStatement pstm=conn.prepareStatement(sql);
  
        ResultSet rs=pstm.executeQuery();
        List<UserBook> list=new ArrayList<UserBook>();
        while(rs.next()){
            String Idbook=rs.getString("idbook");
            String Idname=rs.getString("idname");
            String Name=rs.getString("name");
            String Email=rs.getString("email");
            String Date=rs.getString("date");
            String Hour=rs.getString("hour");
            String Slot=rs.getString("slot");
            String Type=rs.getString("type");
            UserBook userbook=new UserBook();
            userbook.setIdbook(Idbook);
            userbook.setIdname(Idname);
            userbook.setName(Name);
            userbook.setEmail(Email);
            userbook.setDate(Date);
            userbook.setHour(Hour);
            userbook.setSlot(Slot);
            userbook.setType(Type);
            list.add(userbook);
        }
        
        
        return list;
        
    }
    public static List<UserParking> selectUserParking(Connection conn) throws SQLException{
        String sql= "Select s.idxe,s.idname,s.bienso,s.loaixe,s.thoigianvao,s.thoigianra,s.baidau from soluongxe s";
        PreparedStatement pstm=conn.prepareStatement(sql);
        ResultSet rs=pstm.executeQuery();
        List<UserParking> list=new ArrayList<UserParking>();
        while(rs.next()){
            String Idxe=rs.getString("idxe");
            String Idname=rs.getString("idname");
            String Bienso=rs.getString("bienso");
            String Loaixe=rs.getString("loaixe");
            String Thoigianvao=rs.getString("thoigianvao");
            String Thoigianra=rs.getString("thoigianra");
            String Baidau=rs.getString("baidau");
            UserParking userparking=new UserParking();
            userparking.setIdxe(Idxe);
            userparking.setIdname(Idname);
            userparking.setBienso(Bienso);
            userparking.setLoaixe(Loaixe);
            userparking.setThoigianvao(Thoigianvao);
            userparking.setThoigianra(Thoigianra);
            userparking.setBaidau(Baidau);
            list.add(userparking);
        }
        
        
        return list;
        
    }
    public static List<UserParking> selectandsearchUserParking(Connection conn,String idxe) throws SQLException{
        String sql= "SELECT * FROM lala.soluongxe where idxe like '%"+idxe+"%'";
        PreparedStatement pstm=conn.prepareStatement(sql);
  
        ResultSet rs=pstm.executeQuery();
        List<UserParking> list=new ArrayList<UserParking>();
        while(rs.next()){
            String Idxe=rs.getString("idxe");
            String Idname=rs.getString("idname");
            String Bienso=rs.getString("bienso");
            String Loaixe=rs.getString("loaixe");
            String Thoigianvao=rs.getString("thoigianvao");
            String Thoigianra=rs.getString("thoigianra");
            String Baidau=rs.getString("baidau");
            UserParking userparking=new UserParking();
            userparking.setIdxe(Idxe);
            userparking.setIdname(Idname);
            userparking.setBienso(Bienso);
            userparking.setLoaixe(Loaixe);
            userparking.setThoigianvao(Thoigianvao);
            userparking.setThoigianra(Thoigianra);
            userparking.setBaidau(Baidau);
            list.add(userparking);
        }
        
        
        return list;
        
    }
    public static void deleteUserParking(Connection conn, String idxe) throws SQLException{
        String sql = "delete from soluongxe where idxe = ?";
        PreparedStatement pstm=conn.prepareStatement(sql);
        pstm.setString(1,idxe);
        pstm.executeUpdate();
        
    }
    public static List<UserCustomer> selectUserCustomer(Connection conn) throws SQLException{
        String sql= "Select c.idname,c.name,c.email,c.phone,c.birth,c.image from customer c";
        PreparedStatement pstm=conn.prepareStatement(sql);
        ResultSet rs=pstm.executeQuery();
        List<UserCustomer> list=new ArrayList<UserCustomer>();
        while(rs.next()){
            String Idname=rs.getString("idname");
            String Name=rs.getString("name");
            String Email=rs.getString("email");
            String Phone=rs.getString("phone");
            String Birth=rs.getString("birth");
            String Image=rs.getString("image");
            UserCustomer usercustomer=new UserCustomer();
            usercustomer.setIdname(Idname);
            usercustomer.setName(Name);
            usercustomer.setEmail(Email);
            usercustomer.setPhone(Phone);
            usercustomer.setBirth(Birth);
            usercustomer.setImage(Image);
            list.add(usercustomer);
        }
        
        
        return list;
        
    }
    //Xoa Thuoc Tinh
    public static void deleteUserCustomer(Connection conn, String idname) throws SQLException{
        String sql = "delete from customer where idname = ?";
        PreparedStatement pstm=conn.prepareStatement(sql);
        pstm.setString(1,idname);
        pstm.executeUpdate();
        
    }
    //Them Thuoc Tinh
    public static void insertUserCustomer(Connection conn,String idname,String name,String email,String phone,String birth,String image) throws SQLException{
        String sql= "insert into customer values(?,?,?,?,?,?)";
        PreparedStatement pstm =conn.prepareStatement(sql);
        pstm.setString(1,idname);
        pstm.setString(2,name);
        pstm.setString(3,email);
        pstm.setString(4,phone);
        pstm.setString(5,birth);
        pstm.setString(6,image);
        
        pstm.executeUpdate();
    }
    //Sua doi thuoc tinh
    public static UserCustomer getUserCustomer(Connection conn,String idname,String name,String email,String phone,String birth,String image) throws SQLException{
        String sql="select * from customer where idname=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, idname);
        ResultSet rs=pstm.executeQuery();
        while(rs.next()){
            UserCustomer usc=new UserCustomer();
            usc.setIdname(rs.getString("idname"));
            usc.setName(rs.getString("name"));
            usc.setEmail(rs.getString("email"));
            usc.setPhone(rs.getString("phone"));
            usc.setBirth(rs.getString("birth"));
            usc.setImage(rs.getString("image"));
            return usc;
        }
        return null;
    }
    public static void updateUserCustomer(Connection conn,String idname,String name,String email,String phone,String birth,String image)throws SQLException{
        String sql="update customer set name=?, email=?, phone=?, birth=?, image=? where idname=?";
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, name);
        pstm.setString(2, email);
        pstm.setString(3, phone);
        pstm.setString(4, birth);
        pstm.setString(5, image);
        pstm.setString(6, idname);
        pstm.executeUpdate();
    }
    public static List<UserCustomer> selectandsearchUserCustomer(Connection conn,String name) throws SQLException{
        String sql= "SELECT * FROM lala.customer where name like '%"+name+"%'";
        PreparedStatement pstm=conn.prepareStatement(sql);
  
        ResultSet rs=pstm.executeQuery();
        List<UserCustomer> list=new ArrayList<UserCustomer>();
        while(rs.next()){
            String Idname=rs.getString("idname");
            String Name=rs.getString("name");
            String Email=rs.getString("email");
            String Phone=rs.getString("phone");
            String Birth=rs.getString("birth");
            String Image=rs.getString("image");
            UserCustomer usercustomer=new UserCustomer();
            usercustomer.setIdname(Idname);
            usercustomer.setName(Name);
            usercustomer.setEmail(Email);
            usercustomer.setPhone(Phone);
            usercustomer.setBirth(Birth);
            usercustomer.setImage(Image);
            list.add(usercustomer);
        }
        
        
        return list;
        
    }

}
