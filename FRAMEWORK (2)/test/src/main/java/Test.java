package test.Controller;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import mg.itu.annotation.Controller;
import mg.itu.annotation.UrlMapping;
import mg.itu.view.ModelAndView;
import mg.itu.holder.SpringContextHolder;

import test.model.Produit;
import test.service.ProduitService;


import java.util.List;

@Controller
public class Test {
    @UrlMapping(value = "/", method = "GET")
    public ModelAndView home() {
        ModelAndView modelAndView = new ModelAndView("home");
        return modelAndView;
    }

    @UrlMapping(value = "/salama", method = "GET")
    public ModelAndView salama() {
        ModelAndView modelAndView = new ModelAndView("salama");
        return modelAndView;
    }

    // Avant : donnees statiques codees en dur.
    // Maintenant : donnees venant de PostgreSQL via Spring (JdbcTemplate +
    // Repository + Service).
    @UrlMapping(value = "/liste", method = "GET")
    public ModelAndView liste() {
        ProduitService produitService = SpringContextHolder.getContext().getBean(ProduitService.class);

        List<Produit> produits = produitService.getAllProduits();

        ModelAndView mv = new ModelAndView("liste");
        mv.addAttribut("liste", produits);

        return mv;
    }

    @UrlMapping(value = "/akory", method = "GET")
    public ModelAndView akoryaby() {
        ModelAndView modelAndView = new ModelAndView("salama");
        return modelAndView;
    }

    @UrlMapping(value = "/coucou", method = "GET")
    public ModelAndView coucou() {
        ModelAndView modelAndView = new ModelAndView("coucou");
        return modelAndView;
    }

    @UrlMapping(value = "/test", method = "GET")
    public String go() {
        return "GET /test";
    }

    @UrlMapping(value = "/test2", method = "POST")
    public String go2() {
        return "POST /test2";
    }

    @UrlMapping(value = "/test2", method = "GET")
    public String go3() {
        return ("GET /test2");
    }

    // @UrlMapping(value="/test2", method="GET")
    // public String go4(){
    // return ("GET /test2");
    // }

}
