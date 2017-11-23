testing - happy path
testExecuteCmd_modifesLastName
	"test that last name gets modified"

	| app cust cli cmd newLast |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	newLast := 'Jones'.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Joey' Last: 'Smith').
	app domain customers addCust: cust.
	cmd := UpdateCustWithLast newWithCust: cust id Last: newLast.
	cmd executeCmd.
	self assert: [ cust name last = newLast ] description: 'last name not being set'