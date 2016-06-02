accesing
updatePrice: aNumber
	"update price to the argument"

	(self class priceIsValid: aNumber)
		ifTrue: [ price := aNumber ]
		ifFalse: [ Error signal: 'Invalid price - no update made' ]