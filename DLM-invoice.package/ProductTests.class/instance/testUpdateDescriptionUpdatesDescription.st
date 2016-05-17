testing
testUpdateDescriptionUpdatesDescription
	"happy path"

	| description |
	description := 'ABC'.
	self assert: [ ((Product new) updateDescription: description ) description = description  ] 
		description: 'description saved does not match description retrieved' 
		
