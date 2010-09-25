<cfscript>
	// Adobe Bug (CF9)
	//

	include "/cfml2009testsuite/testsuite.cfm";
	
	// Variable LOCALVARIABLE is undefined.
	//
	// Named arguments with implicit structs cannot resolve local variables.
	//
	// Broken in CF9.0.1
	//
	function test()
	{
		var localVariable = 1;
		assert(1,return_arguments(z={value=localVariable}).z.value);
	}
	
	writeOutput("success.");
</cfscript>