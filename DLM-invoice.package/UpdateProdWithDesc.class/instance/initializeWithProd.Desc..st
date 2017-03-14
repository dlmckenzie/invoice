initialization
initializeWithProd: aProductKeyString Desc: aProductDescriptionString
	"initialize self"

	key := aProductKeyString.
	desc := aProductDescriptionString.
	(Application products prodExistsForKey: key)
		ifTrue: [ prod := Application products retrieveByKey: key. origProd := prod deepCopy.]
		ifFalse: [prod := nil].
	
	newProd := (Product newWithKey: key) updateDescription: desc.
	self validate