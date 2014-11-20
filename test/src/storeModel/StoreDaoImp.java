package storeModel;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class StoreDaoImp implements StoreDao {
	@Autowired
	private SqlSessionFactory sqlSessionFactory;
	private SqlSession session;

	@Override
	public int insertStore(StoreDto store) {
		int value = 0;

		try {
			session = sqlSessionFactory.openSession();
			value = session.insert("insertStore", store);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("Store Insert Error.");
		} finally {
			session.close();
		}

		return value;
	}

	@Override
	public int isExistStore(StoreDto store) {
		String id = null;
		
		try {
			session = sqlSessionFactory.openSession();
			id = session.selectOne("isExistStore", store);
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("isExistStore Error.");
		} finally {
			session.close();
		}
		
		if (id == null) return 0;
		return 1;
	}
}
