testing
testBuildSuccessMsgInterface
	"test method interface"

	| cmd app cli|
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	self
		assert: [ SearchCustByLast new respondsTo: #buildSuccessMsg ]
		description: 'SearchCustByLast buildSuccessMsg method does not exist'.
	cmd := SearchCustByLast newWithLast: 'Smith'.
	cmd executeCmd.
	self
		assert: [ cmd buildSuccessMsg isMemberOf: SearchCustByLast ]
		description: 'SearchCustByLast buildSuccessMsg method did not answer self'