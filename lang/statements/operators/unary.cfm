<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";
	
	// Defeat the basic optimizer in the CF compiler
	function value() { return 33; }
	
	x = value();
	
	// Probably optimized away...
	assert(-(-(-(-5))), 5);
	assert(-(-(-x)), -33);
	
	writeOutput("success.");
</cfscript>