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
public class UserBook {
    private String idbook;
    private String idname;
    private String name;
    private String email;
    private String date;
    private String hour;
    private String slot;
    private String type;
    
    public UserBook(){
        
    }
    public UserBook(String idbook,String idname,String name,String email,String date,String hour,String slot,String type){
        this.idbook=idbook;
        this.idname=idname;
        this.name=name;
        this.email=email;
        this.date=date;
        this.hour=hour;
        this.slot=slot;
        this.type=type;
    }
    public UserBook(UserBook usb){
        this.idbook=usb.idbook;
        this.idname=usb.idname;
        this.name=usb.name;
        this.email=usb.email;
        this.date=usb.date;
        this.hour=usb.hour;
        this.slot=usb.slot;
        this.type=usb.type;
    }

  
    
    public String getIdbook() {
        return idbook;
    }

    /**
     * @param idbook the idbook to set
     */
    public void setIdbook(String idbook) {
        this.idbook = idbook;
    }
    public String getIdname() {
        return idname;
    }

    
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
     * @return the date
     */
    public String getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(String date) {
        this.date = date;
    }

    /**
     * @return the hour
     */
    public String getHour() {
        return hour;
    }

    /**
     * @param hour the hour to set
     */
    public void setHour(String hour) {
        this.hour = hour;
    }

    /**
     * @return the slot
     */
    public String getSlot() {
        return slot;
    }

    /**
     * @param slot the slot to set
     */
    public void setSlot(String slot) {
        this.slot = slot;
    }

    /**
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }
    
}
