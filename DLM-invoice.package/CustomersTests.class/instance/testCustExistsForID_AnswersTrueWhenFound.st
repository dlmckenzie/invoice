testing - happy path
testCustExistsForID_AnswersTrueWhenFound
	"test that method answers true when customer with id is found"

	| customers cust |
	customers := Customers new.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Lisa' Last: 'Smith').
	customers addCust: cust.
	self assert: [ customers custExistsForID: cust id ] description: 'custExists did not find customer'