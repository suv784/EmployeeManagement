package com.Emp.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.Emp.Dao.EmployeeDao;
import com.Emp.Dto.Employee;

@Controller
public class EmployeeController {  
	@RequestMapping("/saveEmployee") 
	public ModelAndView saveEmployee(@ModelAttribute Employee employee)
	{
		ModelAndView mav = new ModelAndView("index.jsp");
		System.out.println(employee.getDepartment()); 
		System.out.println(employee.getAddress()); 
		System.out.println(employee.getSalary());
		EmployeeDao.saveEmployee(employee);
		mav.addObject("msg",employee.getName()+"saved Successfully");
		return mav;
	}
	@RequestMapping("/viewEmployee")
	public ModelAndView viewEmployeeDetails(){
		ModelAndView mav = new ModelAndView("display.jsp");
		mav.addObject("employee", EmployeeDao.getAllEmployee());
		return mav;
	} 
	@RequestMapping("/delete")
	public ModelAndView deleteStudent(@RequestParam int id)
	{
		ModelAndView mav = new ModelAndView("viewEmployee");		
		EmployeeDao.deleteEmployee(id);
		return mav;
	} 
	@RequestMapping("/edit")
	public ModelAndView editStudent(@RequestParam int id, Model m)
	{
		ModelAndView mav = new ModelAndView("editemployee.jsp");
		Employee employee = EmployeeDao.findEmployeeByid(id);
		mav.addObject("emp",employee);
		
		return mav;		
	}
	@RequestMapping("/update")
	public ModelAndView updateStudent(@ModelAttribute Employee employee)
	{
		ModelAndView mav = new ModelAndView("viewEmployee");
		EmployeeDao.updateEmployee(employee);
		return mav;				
	}	
	
	

}
