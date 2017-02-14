instance creation
newWithKey: aProductKeyString Price: aProductPrice
	"creates a new instance of the command"

	^ self new initializeWithKey: aProductKeyString Price: aProductPrice 