testing
testPassedInterface
	self
		assert: [ ValidationResponse new respondsTo: #passed ]
		description: 'ValidationResponse method ''passed'' does not exist'.
	self
		assert: [ ValidationResponse new passed isKindOf: Boolean ]
		description: 'method did not answer with a boolean'