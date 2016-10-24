testing - happy path
testFirst_standardCase
	"method should update customer's first name to that provided"

	| customer first |
	first := 'Joe'.
	customer := Customer newWithName: (CustomerName newWithFirst: 'Joey' Last: 'Smith').
	customer name first: first.
	self assert: [ customer name first = first ] description: 'update of first name failed'