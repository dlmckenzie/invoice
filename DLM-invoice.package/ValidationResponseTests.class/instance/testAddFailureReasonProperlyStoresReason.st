testing
testAddFailureReasonProperlyStoresReason
	"test that argument gets stored properly"

	| vr reason|
	reason := 'stub reason'.
	vr := ValidationResponse new.
	vr addFailureReason: reason.
	self assert: [ vr failureReason = reason ] description: 'Failure reason not properly stored'