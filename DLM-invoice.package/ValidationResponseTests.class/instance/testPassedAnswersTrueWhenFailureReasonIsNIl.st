testing
testPassedAnswersTrueWhenFailureReasonIsNIl
	| vr |
	vr := ValidationResponse new.
	self assert: [ vr passed ] description: 'method should have answered true'