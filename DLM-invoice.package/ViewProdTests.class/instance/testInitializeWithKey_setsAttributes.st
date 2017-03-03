testing - happy path
testInitializeWithKey_setsAttributes
	"test that command''s attributes get set"

	| app cli cmd key |
	app := App new start.
	cli := CLI new start: app.
	key := 'A10'.
	app products addProd: (Product newWithKey: key).
	self assert: [ app products size = 1 ] description: 'test setup failed'. 
	cmd := ViewProd newWithKey: key.
	self assert: [ cmd prod key = key ] description: 'instance variable not being set' 