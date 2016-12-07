initialization
initializeWithKey: aProductKeyString Desc: aProductDescriptionString Price: aNumericPrice
	"initialize myself"

	key := aProductKeyString.
	desc := aProductDescriptionString.
	price := aNumericPrice.
	prod := Product newWithKey: key.
	prod updateDescription: desc; updatePrice: price.
	self validate