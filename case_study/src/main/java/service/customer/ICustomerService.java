package service.customer;

import model.person.customer.Customer;

import java.util.List;

public interface ICustomerService {
    List<Customer> findAll();
    boolean add(Customer customer);
    boolean update(int id );
    boolean delete(int id);
    List<Customer> findById(int id);
}
