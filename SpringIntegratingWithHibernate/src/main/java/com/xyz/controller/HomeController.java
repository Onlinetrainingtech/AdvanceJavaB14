package com.xyz.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import model.Product;
import model.ProductDAO;

@Controller
public class HomeController {

	@RequestMapping(value="/")
	public ModelAndView indexPage()
	{
		ModelAndView m1=new ModelAndView("index");
		return m1;
	}
	@RequestMapping(value="product")
	public ModelAndView productPage()
	{
		ModelAndView m2=new ModelAndView("Product");
		return m2;
	}
	@RequestMapping(value="/addproduct")
	public ModelAndView addProduct(HttpServletRequest req)
	{
		int id=Integer.parseInt(req.getParameter("t1"));
		String pname=req.getParameter("t3");
		int pcost=Integer.parseInt(req.getParameter("t2"));
		if(id!=0)
		{
			Product p=new Product();
			p.setPid(id);
			p.setPname(pname);
			p.setPcost(pcost);
			ProductDAO pd=new ProductDAO();
			boolean b=pd.insertProduct(p);
		}
		ModelAndView m3=new ModelAndView("sucess");
		return m3;
	}
}