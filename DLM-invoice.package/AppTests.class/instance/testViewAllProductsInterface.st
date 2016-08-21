testing - product
testViewAllProductsInterface
	"test interface for viewAllProducts"

	self assert: [ App new respondsTo: #viewAllProducts ] description: 'method does not exist'.
	self assert: [ App new start viewAllProducts isMemberOf: App ] description: 'method did not answer App'