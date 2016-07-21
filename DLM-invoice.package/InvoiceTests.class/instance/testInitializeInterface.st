testing
testInitializeInterface
	self
		assert: [ Invoice respondsTo: #initialize ]
		description: 'method initialize does not exist'.
	self
		assert: [ Invoice initialize isKindOf: Invoice class]
		description: 'Method did not answer with self'