package currency.controller;

import currency.service.ICurrencyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.Mapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.jws.WebParam;

@Controller
public class CurrencyController {
    @Autowired
    private ICurrencyService iCurrencyService ;

    @GetMapping("")
    public String index() {
        return "index";
    }

    @PostMapping("/result")
    public String result(@RequestParam double usd, Model model) {
        Double result = iCurrencyService.getMoney(usd);
        model.addAttribute("result" , result) ;
        return "result";
    }
}
