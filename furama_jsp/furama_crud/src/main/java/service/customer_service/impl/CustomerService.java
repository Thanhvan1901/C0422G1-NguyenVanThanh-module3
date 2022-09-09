package service.customer_service.impl;

import model.customer.Customer;
import model.customer.CustomerType;
import repository.customer_repository.IRepositoryCustomer;
import repository.customer_repository.impl.CustomerRepository;
import service.customer_service.IService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CustomerService implements IService {
    private IRepositoryCustomer repository = new CustomerRepository();

    @Override
    public List<Customer> findAll() {
        return repository.findAll();
    }

    @Override
    public Map<String,String> addCustomer(Customer customer) {
        Map<String , String> errMap = this.validate(customer);
        if (errMap.isEmpty()){
            repository.addCustomer(customer);
        }
        return errMap;
    }



    @Override
    public void deleteCustomer(int id) {
        repository.deleteCustomer(id);
    }

    @Override
    public  Map<String ,String> updateCustomer(Customer customer) {
        Map<String , String> errMap = this.validate(customer);
        if (errMap.isEmpty()) {
            repository.updateCustomer(customer);
        }
        return errMap;
    }

    @Override
    public Customer findById(int id) {
        return repository.findById(id);
    }

    @Override
    public List<CustomerType> showCustomerType() {
        return repository.showCustomerType();
    }

    @Override
    public List<Customer> searchByName(String name) {
        return repository.searchByName(name);
    }

    private Map<String, String> validate(Customer customer) {
        Map<String,String> errMap = new HashMap<>();
        if (!customer.getCustomerName().isEmpty()){
            if (!customer.getCustomerName().matches("^([A-Z][a-z])+( [A-Z][a-z]+)*$")){
                errMap.put("nameErr","Please input right format!");
            }

        }else {
            errMap.put("nameErr","Please input name");
        }

        if (!customer.getCustomerIdCard().isEmpty()){
            if (!customer.getCustomerIdCard().matches("^[0-9]{9}|[0-9]{12}$")){
                errMap.put("idErr","Please input right format!");
            }
        }else {
            errMap.put("idErr","please input idCard");
        }

        if (!customer.getCustomerPhone().isEmpty()){
            if (!customer.getCustomerPhone().matches("^((090)|(091)|(\\(84\\)+90)|(\\(84\\)+91))[0-9]{7}$")){
                errMap.put("phoneErr","Please input right format!");
            }
        }else {
            errMap.put("phoneErr","please input phone");
        }

        if (!customer.getCustomerEmail().isEmpty()){
            if (!customer.getCustomerEmail().matches("^[a-z0-9]+@[a-z0-9]+\\.[a-z]+$")){
                errMap.put("emailErr","Please input right format!");
            }
        }else {
            errMap.put("emailErr","please input email");
        }

        if ((!customer.getCustomerBirth().isEmpty())){
            if ((customer.getCustomerBirth()).matches("^[0-9]{2}/[0-9]{2}/[0-9]{4}$")){
                errMap.put("birthdayErr","Please input right format!");
            }
        }else {
            errMap.put("birthdayErr","please input birthday");
        }
        return errMap;
    }
}
