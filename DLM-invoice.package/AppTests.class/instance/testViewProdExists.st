testing
testViewProdExists
	"test that  method exists"

	self assert: [ App new respondsTo: #viewProd: ] description: 'viewProd: method does not exist'