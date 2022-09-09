package abc.controller;

import abc.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import abc.service.CustomerService;

import java.util.List;

@Controller
public class CustomerController {
    @Autowired
    private CustomerService customerService ;

    @GetMapping("")
    public ModelAndView showList(){
        List<Customer> customers = this.customerService.findAll();
        return new ModelAndView("/customer/list","customers",customers );
    }
}
