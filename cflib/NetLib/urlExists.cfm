<!---
This library is part of the Common Function Library Project. An open source
	collection of UDF libraries designed for ColdFusion 5.0 and higher. For more information,
	please see the web site at:

		http://www.cflib.org

	Warning:
	You may not need all the functions in this library. If speed
	is _extremely_ important, you may want to consider deleting
	functions you do not plan on using. Normally you should not
	have to worry about the size of the library.

	License:
	This code may be used freely.
	You may modify this code as you see fit, however, this header, and the header
	for the functions must remain intact.

	This code is provided as is.  We make no warranty or guarantee.  Use of this code is at your own risk.
--->

<!---
 Checks to see if a particular URL actually exists.
 Gus made some changes to handle a unresolving domain.
 
 @param u 	 The URL to check. (Required)
 @return Returns a boolean. 
 @author Ben Forta (ben@forta.com) 
 @version 1, January 3, 2006 
--->
<cffunction name="urlExists" output="no" returntype="boolean">
	<!--- Accepts a URL --->
	<cfargument name="u" type="string" required="yes">

	<!--- Initialize result --->
	<cfset var result=true>

	<!--- Attempt to retrieve the URL --->
	<cfhttp url="#arguments.u#" resolveurl="no" throwonerror="no" />

	<!--- Check That a Status Code is Returned --->
	<cfif isDefined("cfhttp.responseheader.status_code")>
		<cfif cfhttp.responseheader.status_code EQ "404">
			<!--- If 404, return FALSE --->
			<cfset result=false>
		</cfif>
	<cfelse>
		<!--- No Status Code Returned --->
		<cfset result=false>
	</cfif>
	<cfreturn result>
</cffunction>