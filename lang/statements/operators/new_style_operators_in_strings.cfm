<cfscript>
	// Adobe Bug (CF9)
	//

	include "/cfml2009testsuite/testsuite.cfm";

	x = 33;

	// Knowns Bugs in CF9 HF1:
	
	// Cannot use ternary operator in strings
	//	
	// ColdFusion was looking at the following text: >
	//
	// Note: Still broken in 9.0.1, punted for CF10
	//
	z = "#x < 2#";
	assert(true,"#x < 2#");
	
	// ColdFusion was looking at the following text: =	
	//
	// Note: Still broken in 9.0.1, punted for CF10
	//
	z = "#x == 33";
	assert(true,"#x == 33");
	
	writeOutput("success.");
</cfscript>