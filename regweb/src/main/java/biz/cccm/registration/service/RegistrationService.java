/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package biz.cccm.registration.service;

import biz.cccm.registration.domain.RegistrationForm;
import java.util.Map;

/**
 *
 * @author ch1choo1
 */
public interface RegistrationService {

    public boolean submit(RegistrationForm form) throws Exception;

    public void sendEmail(RegistrationForm form, Map<String, Object> params, String template);

    public void cancel(String registrationID);
}