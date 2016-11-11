testing - exceptions
testInitializeWithKey_raisesErrorWithNonStringKey
	"should raise error on nil key"
	
	self should: [ (Product new) initializeWithKey: (9).] raise: Error.