testing - interface
testCustExists_interface
	"test existance of method"

	self
		assert: [ Customers new respondsTo: #custExistsForID: ]
		description: 'method Customers custExists: does not exist'.
	self
		assert: [ (Customers new custExistsForID: 1) isKindOf: Boolean ]
		description: 'Method should have answered with a boolean'