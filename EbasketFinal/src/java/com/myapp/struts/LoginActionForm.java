/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author alex
 */
public class LoginActionForm extends org.apache.struts.action.ActionForm {

    private String name;
    private String password;
    private String error1;
    private String error2;
    private String error3;
    private String error4;
    private String error5;
    private String error6;

    public String getLoginName() {
        return name;
    }

    public void setLoginName(String string) {
        name = string;
    }

    public String getLoginPassword() {
        return password;
    }

    public void setLoginPassword(String s) {
        password = s;
    }

    public void setError1() {
        this.error1 =
                "<span style='color:red'>valid entries for both fields required</span>";
    }

    public String getError1() {
        return this.error1;
    }

    public void setError2() {
        this.error2 = "<span style='color:red'>Username required</span>";
    }

    public String getError2() {

        return this.error2;
    }

    public void setError3() {
        this.error3 =
                "<span style='color:red'>Password required</span>";
    }

    public String getError3() {
        return this.error3;
    }

    public void setError4() {
        this.error4 =
                "<span style='color:red'>Please enter a valid username</span>";
    }

    public String getError4() {
        return this.error4;
    }

    public void setError5() {
        this.error5 =
                "<span style='color:red'>Please enter a valid password</span>";
    }

    public String getError5() {
        return this.error5;
    }

    public void setError6() {
        this.error6 =
                "<span style='color:red'>Please enter a valid username and password</span>";
    }

    public String getError6() {
        return this.error6;
    }

    public LoginActionForm() {
        super();

    }
}
