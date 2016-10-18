testing - happy path
testInitializeWithIDName_savesArguments
	"test that arguments get saved"

	| name cust id |
	id := 99.
	name := CustomerName newWithFirst: 'Joe' Last: 'Smith'.
	cust := Customer new initializeWithID: id Name: name. 
	self assert: [ cust name = name ] description: 'customer name argument not saved to customer'.
	self assert: [ cust id = id ] description: 'customer id argument not saved to customer'