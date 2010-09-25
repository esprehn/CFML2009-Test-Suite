<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";

	// Defeat the basic optimizer in the CF compiler
	function two() { return 2; }
	function three() { return 3; }

	x = 2;
	y = 3;
	if( two()+three() != x+y )
		throw "AssertFailure #two()+three()# != #x+y#";
		
	x = 2;
	y = 3;
	if( two()+three() != x+y )
		throw "AssertFailure #two()+three()# != #x+y#";
	
	writeOutput("success.");
</cfscript>