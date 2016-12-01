initialization
initializeWithKey: aProductKeyString
	"initialize myself"

	key := aProductKeyString.
	prod := Product newWithKey: key.
	self validate