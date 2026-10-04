package controllers;

import annotation.Controller;
import annotation.UrlMapping;
import models.ModelAndView;

@Controller("controllers.HomeController")
public class HomeController {

    @UrlMapping(value = "/home", method = "GET")
    public ModelAndView home() {
        ModelAndView mv = new ModelAndView("home");
        mv.addAttribute("message", "Accueil Phoenix");
        return mv;
    }

    @UrlMapping(value = "/hello", method = "GET")
    public ModelAndView hello() {
        ModelAndView mv = new ModelAndView("hello");
        mv.addAttribute("message", "Hello depuis Phoenix Framework !");
        return mv;
    }
}
