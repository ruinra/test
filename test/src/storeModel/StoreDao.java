package storeModel;

public interface StoreDao {
	public int isExistStore(StoreDto store);
	public int insertStore(StoreDto store);
}
