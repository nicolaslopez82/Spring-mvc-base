package com.nml.mvc.base.controller;

import com.nml.mvc.base.dto.RegistrationDTO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;

/**
 * Created by Nicolas on 8/26/2016.
 */

@Controller
public class RegistrationController {

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String displayRegistration(Model model){return "/registration";}

    @ModelAttribute
    public RegistrationDTO createRegistrationBean(){return new RegistrationDTO();}

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String submitRegistration(@Valid RegistrationDTO registrationDTO, BindingResult result,
                                     SessionStatus sessionStatus,
                                     RedirectAttributes redirectAttributes){
        if(result.hasErrors()){
            return "/registration";
        }

        String message = registrationDTO.toString();
        sessionStatus.isComplete();
        redirectAttributes.addFlashAttribute("message", message);

        return "redirect:/registration";
    }
}
