testing - exceptions
testInitializeWithKey_raisesErrorWithEmptyKey
	"should raise error on nil key"
	
	self should: [ (Product new) initializeWithKey: nil.] raise: Error.
	

	
	

	