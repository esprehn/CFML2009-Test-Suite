<cfscript>
	// Adobe Bug (CF9) ???
	//
	// This doesn't work if the type is "2" or "2.5"
	// so this is probably a bug and should throw a 
	// compiler exception instead.
	// 

	include "/cfml2009testsuite/testsuite.cfm";

	try
	{
		throw(type="2.3.5");
	}
	// Numeric types are permitted if at least 3 dots.
	catch(2.3.5 e)
	{
		assert("2.3.5",e.type);
	}
	
	writeOutput("success.");
</cfscript>