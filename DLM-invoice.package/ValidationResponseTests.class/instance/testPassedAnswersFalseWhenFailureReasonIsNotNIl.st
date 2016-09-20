testing
testPassedAnswersFalseWhenFailureReasonIsNotNIl
	| vr |
	vr := ValidationResponse new.
	vr addFailureReason: 'test failed'.
	self deny: [ vr passed ] description: 'method should have answered false'