using {Base, withTemporal} from './commom';
namespace training.products;


entity TblProducts: Base, withTemporal{
    key version: Integer;
    name: String(100);
    manufacturer: String(50);
	salesPrice: Decimal;
	basePrice: Decimal;
	quantity: Integer;
} 
