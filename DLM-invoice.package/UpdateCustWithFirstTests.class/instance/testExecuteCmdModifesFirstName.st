testing
testExecuteCmdModifesFirstName
	"test that last name gets modified"

	| app cust cli cmd newFirst |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	newFirst := 'Joe'.
	cust := Customer newWithFirst: 'Joey' Last: 'Smith'.
	app customers addCust: cust.
	cmd := UpdateCustWithFirst newWithCust: cust id First: newFirst.
	cmd executeCmd.
	self assert: [ cust first = newFirst ] description: 'first name not being set'