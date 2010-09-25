<cfscript>
	// Adobe Bug (CF9)
	//

	include "/cfml2009testsuite/testsuite.cfm";
	
	// Implicict structs and arrays are evaluated at compile time???!!
	//
	// Broken in 9.0.1
	//
	function write() { error = 1; }
	function compiler_badness()
	{
		error(z=[write()]);
	}
	assert(false,structKeyExists(variables,"error"));
	
	writeOutput("success.");
</cfscript>