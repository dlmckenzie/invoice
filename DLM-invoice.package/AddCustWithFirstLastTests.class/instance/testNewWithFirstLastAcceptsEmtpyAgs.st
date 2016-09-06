testing
testNewWithFirstLastAcceptsEmtpyAgs
	"method accepts empty arguments"

	| cmd first last app |
	app := App new.
	first := nil.
	last := ''.
	cmd := AddCustWithFirstLast newWithFirst: first Last: last App: app.
	self assert: [ cmd first = first ] description: 'first name not being set'.
	self assert: [ cmd last = last ] description: 'last name not being set'