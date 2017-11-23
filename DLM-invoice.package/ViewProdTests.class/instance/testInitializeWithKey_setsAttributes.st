testing - happy path
testInitializeWithKey_setsAttributes
	"test that command''s attributes get set"

	| app cli cmd key |
	app := App new start.
	cli := CLI new start: app.
	key := 'A10'.
	app domain products addProd: (Product newWithKey: key).
	self assert: [ app domain products size = 1 ] description: 'test setup failed'. 
	cmd := ViewProd newWithKey: key.
	self assert: [ cmd prod key = key ] description: 'instance variable not being set' 