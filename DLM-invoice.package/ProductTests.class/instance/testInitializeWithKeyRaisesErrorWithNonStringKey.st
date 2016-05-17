testing
testInitializeWithKeyRaisesErrorWithNonStringKey
	"should raise error on nil key"
	
	self should: [ (Product new) initializeWithKey: (9).] raise: Error.