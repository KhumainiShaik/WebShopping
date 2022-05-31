/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.to.user;

import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.component.UIInput;
import javax.faces.context.FacesContext;
import javax.faces.validator.FacesValidator;
import javax.faces.validator.Validator;
import javax.faces.validator.ValidatorException;

/**
 *
 * @author Khumaini
 */
@FacesValidator("com.to.user.passwordValidator")
public class PasswordValidator implements Validator{
    
    @Override
    public void validate(FacesContext context,UIComponent component,Object value) throws ValidatorException {
        String password = value.toString();
        UIInput uiConPass = (UIInput)component.getAttributes().get("confirmPassword");
        String conPass = uiConPass.getSubmittedValue().toString();
        if(password == null || password.isEmpty() || conPass == null || conPass.isEmpty()){
            return;
        }
        if(!password.equals(conPass)){
            uiConPass.setValid(false);
            throw new ValidatorException(new FacesMessage("Passwords do not match!"));
        }
    }
}
