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
 Mimics the cffile, action=&quot;copy&quot; command.
 Will not work in CF8.
 
 @param source 	 Source file to copy. (Required)
 @param destination 	 Path to copy file to. (Required)
 @param mode 	 Defines permissions for a file on non-Windows systems. (Optional)
 @param attributes 	 File attributes. (Optional)
 @return Does not return a value. 
 @author Raymond Camden (ray@camdenfamily.com) 
 @version 1, September 18, 2007 
--->
<cffunction name="fileCopy" output="false" returnType="void">
	<cfargument name="source" type="string" required="true">
	<cfargument name="destination" type="string" required="true">
	<cfargument name="mode" type="string" default="" required="false">
	<cfargument name="attributes" type="string" default="" required="false">
	<cfif len(mode)>
		<cffile action="copy" source="#source#" destination="#destination#" mode="#mode#">
	<cfelse>
		<cffile action="copy" source="#source#" destination="#destination#" attributes="#attributes#">
	</cfif>
</cffunction>