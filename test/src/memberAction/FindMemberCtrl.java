package memberAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Component
@Controller
public class FindMemberCtrl {
	// @Autowired
	
	@RequestMapping(value = "/search/findMember.do", method=RequestMethod.GET) //searchbar.jsp에서 들어올때
	public ModelAndView findMember(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		
		String query=request.getParameter("query");
		//System.out.println(query);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("query", query);
		mav.setViewName("/search/findMember.jsp");

		return mav;
	}
}
