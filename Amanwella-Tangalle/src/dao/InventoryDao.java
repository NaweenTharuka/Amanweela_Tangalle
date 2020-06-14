package dao;

import java.util.List;

import entity.Inventory;
import entity.InventoryCustomerItemQuantity;
import entity.InventoryLiquorQuantity;
import entity.InventoryQuantity;

public interface InventoryDao {

	boolean save(Inventory i);
	
	int GetMaxId();
	List<InventoryCustomerItemQuantity> get_item();
	List<InventoryLiquorQuantity> get_liquor();
	List<InventoryQuantity> get_quantity();
	List<Inventory> get_inventory();
	boolean Delete(int id);
	boolean Update(int id,Inventory r);
	int FindItemCount(String item);
	int FindLiquorCount(String liquor);
	boolean UpdateItemQuantity(String item, int quantity);
	boolean UpdateLiquorQuantity(String liquor, int quantity);

}
