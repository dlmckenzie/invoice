private - accessing
validArguments
	"validate the commands arguments and set the validArguments instance variable as appropriate"

	validArguments ifNil: [ validArguments := false ].
	^ validArguments