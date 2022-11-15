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
public class UserPrice {
    private String idprice;
    private String price;
    private String hour;
    private String type;
    private String image;
    
    public UserPrice(){
        
    }
    public UserPrice(String idprice,String price,String hour,String type,String image)
    {
        this.idprice=idprice;
        this.price=price;
        this.hour=hour;
        this.type=type;
        this.image=image;
    }
    public UserPrice(UserPrice usp){
        this.idprice=usp.idprice;
         this.price=usp.price;
         this.hour=usp.hour;
         this.type=usp.type;
         this.image=usp.image;
    }

    public String getIdprice() {
        return idprice;
    }

    public void setIdprice(String idprice) {
        this.idprice = idprice;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public String getHour() {
        return hour;
    }

    public void setHour(String hour) {
        this.hour = hour;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
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
