testing
testAddFailureReasonInterface
	self
		assert: [ ValidationResponse new respondsTo: #addFailureReason: ]
		description: 'ValidationResponse method ''addFailureReason'' does not exist'.
	self
		assert: [ (ValidationResponse new addFailureReason: 'stub failure reason') isMemberOf: ValidationResponse ]
		description: 'method did not answer with self'