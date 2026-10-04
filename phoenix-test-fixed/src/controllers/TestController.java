package controllers;

import annotation.Controller;
import annotation.RestApi;
import annotation.UrlMapping;
import models.Employe;
import models.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller("controllers.TestController")
public class TestController {

    @UrlMapping(value = "/test", method = "GET")
    public ModelAndView test() {
        ModelAndView mv = new ModelAndView("test");
        mv.addAttribute("statut", "Le framework répond correctement.");
        return mv;
    }

    @UrlMapping(value = "/employes", method = "GET")
    public ModelAndView employes() {
        List<Employe> employes = new ArrayList<>();
        employes.add(new Employe(1, "Rakoto", "Développeur"));
        employes.add(new Employe(2, "Rasoa", "Chef de projet"));
        employes.add(new Employe(3, "Andry", "Testeur"));

        ModelAndView mv = new ModelAndView("employes");
        mv.addAttribute("employes", employes);
        return mv;
    }

    @RestApi
    @UrlMapping(value = "/api/employes", method = "GET")
    public List<Employe> apiEmployes() {
        List<Employe> employes = new ArrayList<>();
        employes.add(new Employe(1, "Rakoto", "Développeur"));
        employes.add(new Employe(2, "Rasoa", "Chef de projet"));
        employes.add(new Employe(3, "Andry", "Testeur"));
        return employes;
    }
}
