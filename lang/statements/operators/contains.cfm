<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";

	function three() { return 3; }

	x = 33;
	
	assert(true,x contains three());
	assert(true,"foo bar 33 baz" contains three());
	assert(true,"foo bar 33 baz" does not contain three()-1);
	
	writeOutput("success.");
</cfscript>