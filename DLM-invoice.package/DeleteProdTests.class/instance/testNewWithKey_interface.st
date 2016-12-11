testing - interface
testNewWithKey_interface
	"test method interface"
	
	self assert: [ DeleteProd respondsTo: #newWithKey: ] description: 'DeleteProd newWithKey does not exist'.
	self assert: [ (DeleteProd newWithKey: 'A10') isMemberOf: DeleteProd ] description: 'DeleteProd newWithKey does not answer self'