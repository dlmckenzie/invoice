initialization
initializeWithKey: aProductKey
	"initialize myself"

	key := aProductKey.
	prod := Application products retrieveByKey: key.
	self validate