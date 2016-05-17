instance creation
newWithKey: aProductKeyString
	"creates new product using provided key"
	
	^ self new initializeWithKey: aProductKeyString.
