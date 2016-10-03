testing
testExecuteCmdModifesFirstName
	"test that last name gets modified"

	| cust cmd newFirst|
	newFirst := 'Joe'.
	cust := Customer newWithFirst: 'Joey' Last: 'Smith'.
	cmd := UpdateCustWithFirst newWithCust: cust First: newFirst.
	cmd executeCmd.
	self assert: [ cust first = newFirst ] description: 'first name not being set'. 