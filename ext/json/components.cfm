<cfscript>
	include "/cfml2009testsuite/testsuite.cfm";
		
	component = new Test();
	component.comp = new Test();
	component.comp.value = {"x"=[1,2,{'baz'=5}]};
	assert(5,deserializeJSON(serializeJSON(component)).comp.value.x[3].baz);
	
	writeOutput("success.");
</cfscript>