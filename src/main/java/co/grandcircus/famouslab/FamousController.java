package co.grandcircus.famouslab;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.famouslab.entity.Innovator;
import co.grandcircus.famouslab.entity.Inventor;
import co.grandcircus.famouslab.service.APIService;

@Controller
public class FamousController {
	
	@Autowired
	APIService apiService;
	
	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("index");
		
		List<Inventor> inventors = apiService.getNerds();
		
		mv.addObject("list", inventors);
		return mv;
		
	}
	
	@RequestMapping("/complete")
	public ModelAndView complete() {
		ModelAndView mv = new ModelAndView("complete");
		
		List<Innovator> innovators = apiService.getSuperNerds();
		mv.addObject("list", innovators);
		return mv;

	}

}
