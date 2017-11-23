initialization
initializeWithProd: aProductKeyString Desc: aProductDescriptionString
	"initialize self"

	key := aProductKeyString.
	desc := aProductDescriptionString.
	(Application domain products prodExistsForKey: key)
		ifTrue: [ prod := Application domain products retrieveByKey: key. origProd := prod deepCopy.]
		ifFalse: [prod := nil].
	
	newProd := (Product newWithKey: key) updateDescription: desc.
	self validate