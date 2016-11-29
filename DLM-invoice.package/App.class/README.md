Primary container for invoicing app.

To start invoicing app, open playground, then:
	app := App new.
	app start.
To start invoicing app with command line interface add these lines:
	cli := CLI new.
	cli start: app.