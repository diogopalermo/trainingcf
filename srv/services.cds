using {training.products as products} from '../db/schema/products';
using {training.salesorder as salesorder} from '../db/schema/salesorder';
using {training.clients as clients} from '../db/schema/clients';
using {training.user as user} from '../db/schema/user';
using {training.views.TotalSalesByClientView as TotalSalesByClientView} from '../db/views/TotalSalesByClientView';


service MyServices {
  entity Products as projection on products.TblProducts;
  entity SalesOrder as projection on salesorder.TblSalesOrder;  
  entity User as projection on user.TblUser;  
  entity Client as projection on clients.TblClient;  

  entity TotalSalesByClient as projection on TotalSalesByClientView; 
  
  function helloFunction(name: String) returns String;
  action helloAction(name: String) returns String;
  action callProcedure(value: Integer) returns String;
  

}
