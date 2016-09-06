testing
testNewWithFirstLastSetsInstanceVariables
	"happy path - test that instance variables are being set"

	| cmd first last app |
	app := App new.
	first := 'Joe'.
	last := 'Smith'.
	cmd := AddCustWithFirstLast newWithFirst: first Last: last App: app.
	self assert: [ cmd first = first ] description: 'first name not being set'.
	self assert: [ cmd last = last ] description: 'last name not being set'