testing - interface
testIdentityIsValid_interface
	self
		assert: [ CustomerName new respondsTo: #identityIsValid ]
		description: 'CustomerName identityIsValid method does not exist'.
	self
		assert: [ (CustomerName newWithFirst: 'Joe' Last: 'Smith')  identityIsValid isKindOf: Boolean ]
		description: 'method did not answer with a Boolean'