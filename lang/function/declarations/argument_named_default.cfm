<cfscript>
	// Adobe Bug (CF9)
	//

	// Cannot have an argument named "default".
	//	
	// Invalid CFML construct found on line 141 at column 34.
	// ColdFusion was looking at the following text:
	//
	// Still broken in 9.0.1
	//
	public function default2(default) {}
	
	writeOutput("success.");
</cfscript>