initialization
initializeWithKey: aProductKey
	"initialize myself"
	
	key := aProductKey.
	prod := Product newWithKey: key.
	self validate