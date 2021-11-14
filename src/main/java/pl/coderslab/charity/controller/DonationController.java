package pl.coderslab.charity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.charity.entity.Donation;
import pl.coderslab.charity.service.JpaCategoryService;
import pl.coderslab.charity.service.JpaInstitutionService;


@Controller
public class DonationController {

    private final JpaInstitutionService jpaInstitutionService;
    private final JpaCategoryService jpaCategoryService;

    public DonationController(JpaInstitutionService jpaInstitutionService, JpaCategoryService jpaCategoryService) {
        this.jpaInstitutionService = jpaInstitutionService;
        this.jpaCategoryService = jpaCategoryService;
    }


    @GetMapping("/form")
    public String initForm(Model model) {
        model.addAttribute("donation", new Donation());
        model.addAttribute("institutions", jpaInstitutionService.getAllInstitutions());
        model.addAttribute("categories", jpaCategoryService.getAllCategories());
        return "form";
    }

    @PostMapping("/form")
    public String formAction(){
        return "index";
    }
}
