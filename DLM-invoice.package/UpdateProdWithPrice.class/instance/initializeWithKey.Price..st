initialization
initializeWithKey: aProductKeyString Price: aProductPrice
	"initialize self"

	key := aProductKeyString.
	price := aProductPrice.
	(Application products prodExistsForKey: key)
		ifTrue: [ prod := Application products retrieveByKey: key ].
	origProd := prod deepCopy.
	newProd := (Product newWithKey: key) updatePrice: price.
	self validate