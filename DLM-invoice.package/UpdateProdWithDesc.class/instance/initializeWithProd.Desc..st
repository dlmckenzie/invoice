initialization
initializeWithProd: aProductKeyString Desc: aProductDescriptionString
	"initialize self"

	key := aProductKeyString.
	desc := aProductDescriptionString.
	prod := Application products retrieveByKey: key.
	origProd := prod copy.
	newProd := (Product newWithKey: key) updateDescription: desc.
	self validate