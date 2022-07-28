package co.grandcircus.gradebook;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class HomeController {

	@Autowired
	private GradeRepository repo;
	

	@RequestMapping("/")
	public String listGrades(Model model) {
		List<Grade> grades = repo.findAll();
		model.addAttribute("grades", grades);
		return "displaygrades";
	}

	@RequestMapping("/delete")
	public String deleteGrade(@RequestParam String id) {
		repo.deleteById(id);
		return "redirect:/";
	}

	@RequestMapping("/addgrade")
	public String addAnimal(Model model) {
	Grade newGrade = new Grade();
	model.addAttribute("newGrade", newGrade);
	return "gradeform";
	}

	@PostMapping("/save")
	public String addGrade(@RequestParam String id, 
							@RequestParam String name, 
							@RequestParam String type,
							@RequestParam double score, 
							@RequestParam double total, 
							Model model) {
		Grade newGrade= new Grade(id, name, type, score, total);
		repo.save(newGrade);
		model.addAttribute("newGrade",newGrade);
		return "confirmation";
	}

	
	@RequestMapping("/confirmation")
	public String showConfirmation() {
		return "confirmation";
	}
}
