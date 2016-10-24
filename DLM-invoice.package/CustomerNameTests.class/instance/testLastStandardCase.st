testing - happy path
testLastStandardCase
	"method should update customer's last name to that provided"

	| customer last |
	last := 'Smith'.
	customer := Customer newWithName: (CustomerName newWithFirst: 'Joey' Last: 'Jones').
	customer name last: last.
	self assert: [ customer name last = last ] description: 'update of last name failed'