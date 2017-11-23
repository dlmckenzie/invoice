initialization
initializeWithKey: aProductKey
	"initialize myself"

	key := aProductKey.
	prod := Application domain products retrieveByKey: key.
	self validate