initialization
initializeWithProd: aProductKeyString Desc: aProductDescriptionString
	"initialize self"

	key := aProductKeyString.
	desc := aProductDescriptionString.
	(Application products keyIsUnique: key)
		ifFalse: [ prod := Application products retrieveByKey: key ].
	origProd := prod deepCopy.
	newProd := (Product newWithKey: key) updateDescription: desc.
	self validate