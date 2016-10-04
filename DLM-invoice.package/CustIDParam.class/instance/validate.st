validation
validate
	"validates the parameter"

	(Application2 customers retrieveByID: id) ifNotNil: [ isValid := true ] ifNil: [ isValid := false ]