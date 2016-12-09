interface - product
addProdWithKey: aProductKeyString Desc: aProductDescriptionString Price: aPriceNumber
	"add a product with its key, description and price"

	(AddProdWithKeyDescPrice
		newWithKey: aProductKeyString
		Desc: aProductDescriptionString
		Price: aPriceNumber) executeCmd