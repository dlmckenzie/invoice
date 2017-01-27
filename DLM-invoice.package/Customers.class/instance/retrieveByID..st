collection ops
retrieveByID: anInteger
	"answer with customer that matches ID, or raise error if not found"

	^ self at: anInteger ifAbsent: [ Error signal: 'ID does not exist' ]