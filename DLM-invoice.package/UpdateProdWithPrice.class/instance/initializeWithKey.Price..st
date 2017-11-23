initialization
initializeWithKey: aProductKeyString Price: aProductPrice
	"initialize self"

	key := aProductKeyString.
	price := aProductPrice.
	(Application domain products prodExistsForKey: key)
		ifTrue: [ prod := Application domain products retrieveByKey: key ].
	origProd := prod deepCopy.
	newProd := (Product newWithKey: key) updatePrice: price.
	self validate