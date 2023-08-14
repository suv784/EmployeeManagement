package com.Emp.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.Emp.Dto.Employee;

public class EmployeeDao {
	static EntityManagerFactory emf = Persistence.createEntityManagerFactory("suvendu");

	public static void saveEmployee(Employee employee) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();

		et.begin();
		em.persist(employee);
		et.commit();
	}

	public static Employee findEmployeeByid(int id) {
		EntityManager em = emf.createEntityManager();
		Employee employee = em.find(Employee.class, id);
		return employee;
	}

	public static List<Employee> getAllEmployee() {
		EntityManager em = emf.createEntityManager();
		String hql = "Select e from Employee e";
		Query q = em.createQuery(hql);
		return q.getResultList();
	}

	public static void deleteEmployee(int id) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();

		Employee employee = em.find(Employee.class, id);

		et.begin();
		em.remove(employee);
		et.commit();
	}

	public static void updateEmployee(Employee employee) {
		EntityManager em = emf.createEntityManager();
		EntityTransaction et = em.getTransaction();

		et.begin();
		em.merge(employee);
		et.commit();
	}

}
