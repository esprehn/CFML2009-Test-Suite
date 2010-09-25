<!---
	Component for the testsuite. Written in tags so the testsuite
	should support any runtime with CFMX7 Application.cfc compatability.
	
	@Author Elliott Sprehn (esprehn@gmail.com)
--->
<cfcomponent output="false">
	<cfset this.name = "ColdFusion.TestSuite.2009">
	<cfset this.sessionmanagement = true>
	<cfset this.mappings["/cfml2009testsuite"] = getDirectoryFromPath(getCurrentTemplatePath())>
</cfcomponent>