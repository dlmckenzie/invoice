instance creation
newWithKey: aProductKeyString Desc: aProductDescriptionString Price: aNumericPrice
	"Answers a new initialized AddProdWithKey command"

	^ self new initializeWithKey: aProductKeyString Desc: aProductDescriptionString Price: aNumericPrice 