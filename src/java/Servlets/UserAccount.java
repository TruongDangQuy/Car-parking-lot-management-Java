/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlets;

/**
 *
 * @author Adminstrator
 */
 public class UserAccount {
     public static final String GENDER_MALE="M";
     public static final String GENDER_FEMALE="F";
     
     private String userName;
     private String gender;
     private String password;
     private String id_account;
     
     public UserAccount(){
         
     }
     public UserAccount(String username,String gender,String password,String id_account){
         this.userName=username;
         this.gender=gender;
         this.password=password;
         this.id_account=id_account;
     }
     public UserAccount(String username,String password){
         this.userName=username;
         this.password=password;
     }
     public UserAccount(UserAccount us){
         this.userName=us.userName;
         this.gender=us.gender;
         this.password=us.password;
         this.id_account=us.id_account;
     }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the id_account
     */
    public String getId_account() {
        return id_account;
    }

    /**
     * @param id_account the id_account to set
     */
    public void setId_account(String id_account) {
        this.id_account = id_account;
    }
    
    
 }
