package pl.coderslab.charity.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import pl.coderslab.charity.entity.Donation;
import pl.coderslab.charity.service.JpaCategoryService;
import pl.coderslab.charity.service.JpaDonationService;
import pl.coderslab.charity.service.JpaInstitutionService;


@Controller
public class DonationController {

    private final JpaInstitutionService jpaInstitutionService;
    private final JpaCategoryService jpaCategoryService;
    private final JpaDonationService jpaDonationService;

    public DonationController(JpaInstitutionService jpaInstitutionService, JpaCategoryService jpaCategoryService, JpaDonationService jpaDonationService) {
        this.jpaInstitutionService = jpaInstitutionService;
        this.jpaCategoryService = jpaCategoryService;
        this.jpaDonationService = jpaDonationService;
    }


    @GetMapping("/form")
    public String initForm(Model model) {
        model.addAttribute("donation", new Donation());
        model.addAttribute("institutions", jpaInstitutionService.getAllInstitutions());
        model.addAttribute("categories", jpaCategoryService.getAllCategories());
        return "form";
    }

    @PostMapping("/form")
    public String formAction(Donation donation){
        jpaDonationService.save(donation);
        return "redirect:/";
    }
}
