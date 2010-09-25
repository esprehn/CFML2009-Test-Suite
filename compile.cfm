<cfset rootPath = getDirectoryFromPath(getCurrentTemplatePath())>

<cfdirectory 
	action="list" 
	directory="#rootPath#"
	name="files" 
	filter="*.cfm" 
	recurse="true"
	listinfo="name">
	
<cfdirectory 
	action="list" 
	directory="#rootPath#"
	name="localFiles" 
	filter="*.cfm" 
	listinfo="name">
	
<cfquery name="files" dbtype="query">
	select * 
	from files 
	where 
	name not in (#quotedvaluelist(localFiles.name)#)
</cfquery>

<cfset tests = {}>

<cfloop query="files">
	<cfset node = tests>
	<cfloop index="part" array="#listToArray(files.name,'/\')#">
		<cfif find(".",part)>
			<cfset node[part] = files.name>
			<cfbreak>
		<cfelseif not structKeyExists(node,part)>
			<cfset node[part] = {}>
		</cfif>
		<cfset node = node[part]>
	</cfloop>
</cfloop>

<cffile action="write" file="#rootPath#/tests.js" output="#serializeJSON(tests)#">

<cfcontent type="text/javascript">
{status:"success"}