testing - happy path
testExecuteCmd_modifesFirstName
	"test that last name gets modified"

	| app cust cli cmd newFirst |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	newFirst := 'Joe'.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Joey' Last: 'Smith').
	app domain customers addCust: cust.
	cmd := UpdateCustWithFirst newWithCust: cust id First: newFirst.
	cmd executeCmd.
	self assert: [ cust name first = newFirst ] description: 'first name not being set'