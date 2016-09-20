testing
testAddFailureReasonRaisesErrorWhenNilArg
	"test that argument may not be nil"

	| vr reason |
	reason := nil.
	vr := ValidationResponse new.
	self should: [ vr addFailureReason: reason ] raise: Error