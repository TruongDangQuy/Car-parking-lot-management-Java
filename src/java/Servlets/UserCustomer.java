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
public class UserCustomer {
    private String idname;
    private String name;
    private String email;
    private String phone;
    private String birth;
    private String image;
    
    public UserCustomer(){

    }
    public UserCustomer(String idname,String name,String email,String phone,String birth,String image){
        this.idname=idname;
        this.name=name;
        this.email=email;
        this.phone=phone;
        this.birth=birth;
        this.image=image;
    }
    public UserCustomer(UserCustomer usc){
        this.idname=usc.idname;
        this.name=usc.name;
        this.email=usc.email;
        this.phone=usc.phone;
        this.birth=usc.birth;
        this.image=usc.image;
    }

    /**
     * @return the idname
     */
    public String getIdname() {
        return idname;
    }

    /**
     * @param idname the idname to set
     */
    public void setIdname(String idname) {
        this.idname = idname;
    }

    /**
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the phone
     */
    public String getPhone() {
        return phone;
    }

    /**
     * @param phone the phone to set
     */
    public void setPhone(String phone) {
        this.phone = phone;
    }

    /**
     * @return the birth
     */
    public String getBirth() {
        return birth;
    }

    /**
     * @param birth the birth to set
     */
    public void setBirth(String birth) {
        this.birth = birth;
    }

    /**
     * @return the image
     */
    public String getImage() {
        return image;
    }

    /**
     * @param image the image to set
     */
    public void setImage(String image) {
        this.image = image;
    }
    
}


    
