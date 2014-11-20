package ownerAction;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ownerModel.OwnerDao;
import ownerModel.OwnerDto;

@Component
@Controller
public class JoinOwnerCtrl {
	@Autowired //해당 변수타입과 일치하는 빈을 찾아서 주입
	private OwnerDao ownerDao;
	
	@RequestMapping(value = "/owner/storeJoin.do", method=RequestMethod.GET) //join.jsp에서 들어올때
	public ModelAndView storeJoin(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		ModelAndView mav=new ModelAndView();
		mav.setViewName("/owner/storeJoin.jsp");
		return mav;
	}
	
	@RequestMapping(value = "/owner/storeJoin.do", method=RequestMethod.POST) //storeJoin.jsp에서 데이터값 넘어올때
	public ModelAndView storeJoinOk(@ModelAttribute OwnerDto ownerDto, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
	
		request.setCharacterEncoding("utf-8");
		
		ownerDto.setStoreId(1);
		ownerDto.setEmail(request.getParameter("email"));
		ownerDto.setPassword(request.getParameter("password"));
		ownerDto.setRegisterNum(request.getParameter("business"));
		
		int check=ownerDao.storeJoin(ownerDto);
		//System.out.println(check);
		
		ModelAndView mav=new ModelAndView();
		mav.addObject("check", check);
		mav.setViewName("/main/main.jsp");
		return mav;
	}
}
