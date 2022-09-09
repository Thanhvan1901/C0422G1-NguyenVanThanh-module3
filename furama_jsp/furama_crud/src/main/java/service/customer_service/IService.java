package service.customer_service;

import model.customer.Customer;
import model.customer.CustomerType;

import java.util.List;
import java.util.Map;

public interface IService {
    List<Customer> findAll();
    Map<String ,String> addCustomer(Customer customer);
    void deleteCustomer(int id);
    Map<String ,String> updateCustomer(Customer customer);
    Customer findById(int id);
    List<CustomerType> showCustomerType();
    List<Customer> searchByName(String name);
}
