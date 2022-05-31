/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Webshopping;

import javax.ejb.Stateful;

/**
 *
 * @author Khumaini
 */
@Stateful
public class CartDetails {
    
    private String[] shirt;
    private String[] shoe;
    private String[] laptop;
    private String[] makeup;
    private String[] phone;
    private String[] dress;

    public CartDetails() {
        
    }

    public String[] getShirt() {
        return shirt;
    }

    public void setShirt(String[] shirt) {
        this.shirt = shirt;
    }

    public String[] getShoe() {
        return shoe;
    }

    public void setShoe(String[] shoe) {
        this.shoe = shoe;
    }

    public String[] getLaptop() {
        return laptop;
    }

    public void setLaptop(String[] laptop) {
        this.laptop = laptop;
    }

    public String[] getMakeup() {
        return makeup;
    }

    public void setMakeup(String[] makeup) {
        this.makeup = makeup;
    }

    public String[] getPhone() {
        return phone;
    }

    public void setPhone(String[] phone) {
        this.phone = phone;
    }

    public String[] getDress() {
        return dress;
    }

    public void setDress(String[] dress) {
        this.dress = dress;
    }

    
    
}
