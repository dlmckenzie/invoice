testing
testInitializeWithIDFirstLastAnswersCustomer
	"test method answers customer"


	self assert: [ (Customer new initializeWithID: Customer nextID  First: 'Joe'  Last: 'Smith') isKindOf: Customer ] description: 'method did not answer self'

	 