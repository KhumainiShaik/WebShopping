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
public class UserData {

    private String userName;

    public UserData() {
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }
    
    
    
}
