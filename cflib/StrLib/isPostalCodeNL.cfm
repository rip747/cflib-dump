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

<cfscript>
/**
 * Checks if valid Dutch postal code.
 * 
 * @param str 	 String to check. (Required)
 * @return Returns a boolean. 
 * @author Jorrit Janszen (jorrit@janszen.net) 
 * @version 1, October 23, 2005 
 */
function isPostalCodeNL (str) {
	//postal codes consists of 4 digits, folowed by one space and two alphas
	return reFind("[1-9][[:digit:]]{3}[ ]?[[:alpha:]]{2}", arguments.str) gte 1;
}
</cfscript>