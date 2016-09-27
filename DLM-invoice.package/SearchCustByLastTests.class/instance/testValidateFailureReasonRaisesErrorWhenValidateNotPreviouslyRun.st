testing
testValidateFailureReasonRaisesErrorWhenValidateNotPreviouslyRun
	" comment "

	| cmd |
	cmd := SearchCustByLast newWithLast: 'Smith'.
	self should: [ cmd validationFailureReason ] raise: Error