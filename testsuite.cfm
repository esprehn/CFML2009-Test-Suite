<!---
	Basic assert function. Written in tags so this should be supported by any
	runtime that supports CFMX 6.0 Compatibility.
--->
<cffunction name="assert" access="public" returntype="void" output="false">
	<cfargument name="a" type="any" required="true">
	<cfargument name="b" type="any" required="true">
	
	<cfif a neq b>
		<cfthrow type="AssertFailure" message="#a# != #b#">
	</cfif>
</cffunction>

<cffunction name="return_arguments" access="public" returntype="any" output="false">
	
	<cfreturn arguments>
</cffunction>

<cffunction name="fail" access="public" returntype="void" output="false">
	<cfargument name="message" type="string" required="false" default="">
	
	<cfif len(message)>
		<cfset message = ": " & message>
	</cfif>
	
	<cfthrow type="TestFailure" message="Test Failure#message#">
</cffunction>

<!--- 
	Way to look for var scope leaks, 
	number is the number of vars defined in this file 
--->
<cfset request.variablesSize = 3>