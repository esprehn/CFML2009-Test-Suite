<cfscript>
	// Adobe Bug (CF9)
	//

	include "/cfml2009testsuite/testsuite.cfm";
	
	// The element at position 5 of dimension 1, of array variable "ARRAY," cannot be found.
	//
	// The evalution order of conditionals with implicit structs and arrays is wrong. 
	//
	// Still broken in 9.0.1
	//
	array = [1];
	3 lt 2 and func([array[5]]);
	
	writeOutput("success.");
</cfscript>