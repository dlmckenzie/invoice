testing - happy path
testUpdateDescription_updatesDescription
	"happy path"

	| description |
	description := 'ABC'.
	self
		assert: [ ((Product newWithKey: 'A') updateDescription: description) description = description ]
		description: 'description saved does not match description retrieved'