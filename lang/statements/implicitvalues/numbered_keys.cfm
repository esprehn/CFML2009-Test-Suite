<cfscript>
	// Adobe Bug (CF9)
	//

	include "/cfml2009testsuite/testsuite.cfm";
	
	// Numbered Keys
	assert(2,return_arguments({"1" = 2})[1]["1"]);
				
	function test2()
	{
		assert(2,return_arguments(argumentCollection={"1"=2})[1]);
	}
	test2();
		
	// Known Bugs in CF9 HF1:
	
	// Nested numbered keys are ignored. Struct is empty.
	//
	// Element 1 is undefined in a CFML structure referenced as part of an expression.
	//
	// Fixed: 9.0.1
	//
	assert(2,return_arguments({z={"1" = 2}})[1].z["1"]);
	
	writeOutput("success.");
</cfscript>