package storeAction;

import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import storeModel.StoreDao;
import storeModel.StoreDto;

@Component
@Controller
public class SearchStoreCtrl {
	@Autowired //해당 변수타입과 일치하는 빈을 찾아서 주입
	private StoreDto store;
	@Autowired
	private StoreDao storeDao;
	
	@RequestMapping(value = "/search/checkStore.do", method=RequestMethod.POST)
	public ModelAndView update(HttpServletRequest request,
			HttpServletResponse response) throws Exception {		
		//parse request
		String title = request.getParameter("title");
		
		title = title.replaceAll("<b>", "");
		title = title.replaceAll("</b>", "");
		
		StringTokenizer st = new StringTokenizer(request.getParameter("category"), ">");
		
		String[] arrCategory = new String[]{"", "", ""};
		
		for (int i = 0; i < 3; i++){
			arrCategory[i] = st.nextToken();
			//System.out.println(arrCategory[i]);
			if (!st.hasMoreTokens()) break;
		}
		
		//create dto 
		store.setStoreName(title);
		store.setCategory1(arrCategory[0]);
		store.setCategory2(arrCategory[1]);
		store.setCategory3(arrCategory[2]);
		store.setPhoneNum(request.getParameter("telephone"));
		store.setAddress(request.getParameter("address"));
		store.setStreetAddr(request.getParameter("roadAddress"));
		store.setLatitude(Long.parseLong(request.getParameter("mapx")));
		store.setLongitude(Long.parseLong(request.getParameter("mapy")));
		store.setOpenDate(null);
		
		//선택한 스토어가 데이터베이스에 있는지 확인
		int isExist = storeDao.isExistStore(store);
		int check = 0;
		
		if (isExist == 0) {
			//insert store
			check = storeDao.insertStore(store);			
		} else {
			check = 2;
		}
		
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("check", check);
		mav.setViewName("/store/storeInfo.jsp");
		
		return mav;
	}

}
