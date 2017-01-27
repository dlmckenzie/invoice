testing - edge cases
testCustExistsForID_AnswersFalseWhenNotFound
	"test that method answers false when customer that doesn't exist is searched for"

	| customers |
	customers := Customers new.
	"cust := Customer newWithName: (CustomerName newWithFirst: 'Lisa' Last: 'Smith')."
	self deny: [ customers custExistsForID: 1 ] description: 'custExists did not find customer'