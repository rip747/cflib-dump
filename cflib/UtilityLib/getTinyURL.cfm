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
 Quick and easy way to get a tinyurl.
 
 @param theurl 	 The URL that you would like to convert to a tinyurl. (Required)
 @return Returns a String containing the tinyurl. 
 @author Todd Sharp (todd@cfsilence.com) 
 @version 1, October 6, 2008 
--->
<cffunction name="getTinyURL" access="public" output="false" returntype="string">
	<cfargument name="theurl" required="true" type="string" />
	<cfset var apiURL = "http://tinyurl.com/api-create.php?url=" & URLEncodedFormat(arguments.theurl) />
	
	<cfhttp url="#apiURL#" />
	
	<cfreturn cfhttp.FileContent />
</cffunction>