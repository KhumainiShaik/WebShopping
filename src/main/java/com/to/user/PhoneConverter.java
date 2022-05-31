/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.to.user;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

/**
 *
 * @author Khumaini
 */

@FacesConverter("PhoneCnvtr")
public class PhoneConverter implements Converter{
    @Override
    public Object getAsObject(FacesContext context,UIComponent component,String value){
        return "+91".concat(value);
    }
    
    @Override
    public String getAsString(FacesContext context,UIComponent agr1,Object arg2){
        return arg2.toString();
    }
}
