<cfscript>
	// Adobe Bug (CF9)
	//

	function test() {}
	
	// Cannot call methods in named arguments inside implicit structs or arrays. 
	//
	// Variable X is undefined.
	//
	// Note: Fixed in 9.0.1 Prerelease
	//
	x = new cfml2009testsuite.TestComponent();
	test( x={y="#x.getName()#"} );
	test( x=["#x.getName()#"] );
	
	writeOutput("success.");
</cfscript>