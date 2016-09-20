testing
testAddFailureReasonRaisesErrorIfFailureReasonNotPreviouslyNil
	"test that argument may not be nil"

	| vr |
	vr := ValidationResponse new.
	vr addFailureReason: 'reason 1'.
	self should: [ vr addFailureReason: 'reason 2' ] raise: Error