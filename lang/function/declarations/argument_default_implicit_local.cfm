<cfscript>
	// Adobe Bug (CF9)
	//
	
	// Referencing a value that's the same as an argument name from within an 
	// implicit array/struct default.
	//	
	// java.lang.UnsupportedOperationException: can't load a null
	//
	// Note: Still broken in 9.0.1
	//
	function implicit_value9(a,b=[a]) {}
	
	writeOutput("success.");
</cfscript>