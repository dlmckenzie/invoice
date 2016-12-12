testing - happy path
testNewWithKeyDesc_createsNewInstance
	"test that method creates new instance of UpdateProdWithDesc"
	
	self assert: [ (UpdateProdWithDesc newWithProd: 'A10' Desc: 'Apart A10') isMemberOf: UpdateProdWithDesc   ] 
	description: 'instance not created'