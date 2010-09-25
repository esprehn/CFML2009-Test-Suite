<cfscript>
	// Adobe Bug (CF9)
	//
	
	// Documented to work in CF9 docs, but doesn't actually:
	//
	// Invalid CFML construct found on line 137 at column 57.
	// ColdFusion was looking at the following text: attribute
	//
	// Note: Can't use extra metadata if no default value provided.
	//
	// Note: Still broken in 9.0.1, "by design" from Adobe CF Team.
	//
	function argument_attributes1(required type name attr="1") {}
	
	writeOutput("success.");
</cfscript>