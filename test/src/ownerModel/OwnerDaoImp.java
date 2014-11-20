package ownerModel;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class OwnerDaoImp implements OwnerDao {
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	private SqlSession session;

	@Override
	public int storeJoin(OwnerDto ownerDto) {
		int value=0;
		
		try{
			session=sqlSessionFactory.openSession();
			value=session.insert("storeJoin", ownerDto);
			session.commit();
		}catch(Exception e){
			e.printStackTrace();
			System.out.println("Store OwnerJoin Error");
		}finally{
			session.close();
		}
		
		return value;
	}

}
