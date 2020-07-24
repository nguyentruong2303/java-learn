package repository;

import java.util.List;

import entity.Customer;

public interface CustomerRepository {
	List<Customer> findAll();
	Customer findById(String id_customer);
	void update(Customer cus);
	void delete(String id_customer);
	void add(Customer cus);
}
