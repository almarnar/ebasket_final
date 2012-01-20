/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author alex
 */
public class LoginAction extends org.apache.struts.action.Action {

    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    private static final String FAILURE = "failure";

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {


        LoginActionForm formBean = (LoginActionForm) form;
        String loginName = formBean.getLoginName();
        String loginPassword = formBean.getLoginPassword();


        if (loginName.length() == 0 && loginPassword.length() == 0) {
            formBean.setError1();
            return mapping.findForward(FAILURE);
        } else if (loginName.length() != 0 && loginPassword.length() == 0) {
            formBean.setError3();
            return mapping.findForward(FAILURE);
        } else if (loginName.length() == 0 && loginPassword.length() != 0) {
            formBean.setError2();
            return mapping.findForward(FAILURE);
        } else if (loginName.length() > 0 && loginPassword.length() > 0 && !(loginName.equals("admin")) && !(loginPassword.equals("pswd"))) {
            formBean.setError6();
            return mapping.findForward(FAILURE);
        } else if (loginName.length() > 0 && loginPassword.length() > 0 && !(loginPassword.equals("pswd"))) {
            formBean.setError5();
            return mapping.findForward(FAILURE);
        } else if (loginName.length() > 0 && loginPassword.length() > 0 && !(loginName.equals("admin"))) {
            formBean.setError4();
            return mapping.findForward(FAILURE);

        }
        return mapping.findForward(SUCCESS);
    }
}
