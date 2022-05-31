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
public class ItemLength {
    
    private int shirtLength = 0;
    private int shoeLength = 0;
    private int dressLength = 0;
    private int makeupLength = 0;
    private int phoneLength = 0;
    private int laptopLength = 0;
    private int sum = 0;

    public ItemLength() {
        
    }

    public int getShirtLength() {
        return shirtLength;
    }

    public void setShirtLength(int shirtLength) {
        this.shirtLength = shirtLength;
    }

    public int getShoeLength() {
        return shoeLength;
    }

    public void setShoeLength(int shoeLength) {
        this.shoeLength = shoeLength;
    }

    public int getDressLength() {
        return dressLength;
    }

    public void setDressLength(int dressLength) {
        this.dressLength = dressLength;
    }

    public int getMakeupLength() {
        return makeupLength;
    }

    public void setMakeupLength(int makeupLength) {
        this.makeupLength = makeupLength;
    }

    public int getPhoneLength() {
        return phoneLength;
    }

    public void setPhoneLength(int phoneLength) {
        this.phoneLength = phoneLength;
    }

    public int getLaptopLength() {
        return laptopLength;
    }

    public void setLaptopLength(int laptopLength) {
        this.laptopLength = laptopLength;
    }

    public int getSum() {
        return sum;
    }

    public void setSum(int sum) {
        this.sum = sum;
    }
    
}
