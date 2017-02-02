initialization
initializeWithProd: aProductKeyString Desc: aProductDescriptionString
	"initialize self"

	key := aProductKeyString.
	desc := aProductDescriptionString.
	(Application products prodExistsForKey: key) not
		ifFalse: [ prod := Application products retrieveByKey: key ].
	origProd := prod deepCopy.
	newProd := (Product newWithKey: key) updateDescription: desc.
	self validate