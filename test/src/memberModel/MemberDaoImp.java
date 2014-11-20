package memberModel;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MemberDaoImp implements MemberDao {
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	private SqlSession session;

	@Override
	public int memberJoin(MemberDto memberDto) {
		int value=0;
		
			try{
				session=sqlSessionFactory.openSession();
				value=session.insert("memberJoin", memberDto);
				session.commit();
			}catch(Exception e){
				e.printStackTrace();
				System.out.println("Member Join Error");
			}finally{
				session.close();
			}
		return value;
	}

}
