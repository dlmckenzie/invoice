accessing
addFailureReason: aFailureReasonString
	"add failure reason"

	failureReason isNil
		ifFalse: [ Error signal: 'Failure reason already contained data' ]. aFailureReasonString isEmptyOrNil
		ifTrue: [ Error signal: 'Failure reason may not be empty' ]
		ifFalse: [ failureReason := aFailureReasonString ]