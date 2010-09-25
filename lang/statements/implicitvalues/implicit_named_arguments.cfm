<cfscript>
	// Adobe Bug (CF9)
	//

	include "/cfml2009testsuite/testsuite.cfm";
	
	// Cannot use implicit values with named arguments.
	//
	// The CFML compiler encountered an unexpected java.lang.IllegalStateException exception.
	// The reason for this was: no parent Occurred at:
	// java.lang.IllegalStateException: no parent
	//
	// Fixed: 9.0.1
	//
	assert(2,return_arguments(b=[1,2,3]).b[2]);
	assert(2,return_arguments(b={x=2}).b.x);
	
	writeOutput("success.");
</cfscript>