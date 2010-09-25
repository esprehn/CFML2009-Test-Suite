<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";
	
	// No way to verify this does anything, but the compiler should allow it
	arraySort([1,5,2],"numeric");

	writeOutput("success.");
</cfscript>