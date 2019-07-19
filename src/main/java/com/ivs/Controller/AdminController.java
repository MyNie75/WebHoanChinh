package com.ivs.Controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ivs.Model.Admin;
import com.ivs.Model.ketNoiDB;



@Controller
public class AdminController {
	@RequestMapping("/admin/home")
	public String adminhome(Model model) throws SQLException
	{
				
		List<Admin> list=  ketNoiDB.getByAlladmin();
		model.addAttribute("listad",list);
		return "admin/adminHome";
	}
}
