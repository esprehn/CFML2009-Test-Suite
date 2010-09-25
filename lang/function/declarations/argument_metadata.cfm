<cfscript>
	// Railo Bug (v3.1.2.018)
	// 
	// Cannot specify metadata for arguments.
	
	// Adobe Bug (CF9)
	//
	
	// Documented to work in CF9 docs, but doesn't actually:
	//
	// Invalid CFML construct found on line 137 at column 57.
	// ColdFusion was looking at the following text: attribute
	//
	// Note: Fixed in 9.0.1
	//
	function argument_attributes(required type arg="" attr="1") {}
	function argument_attributes2(required type arg="" attr) {}
	
	writeOutput("success.");
</cfscript>