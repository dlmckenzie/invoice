testing
testAddFailureReasonRaisesErrorWhenEmptyStringArg
	"test that argument may not be empty string"

	| vr reason |
	reason := ''.
	vr := ValidationResponse new.
	self should: [ vr addFailureReason: reason ] raise: Error