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
 * Searches a given list for a given regexp and returns the index number of the first item found.
 * 
 * @param list 	 The list to search. (Required)
 * @param regexp 	 The regular expression to use. (Required)
 * @param delimiter 	 The list delimiter, defaults to a comma. (Optional)
 * @return Returns a number. 
 * @author Tony Kenny (tony@kenny.net) 
 * @version 1, May 26, 2003 
 */
function ListReFindNoCase(list, regexp) {
	var i = 1;
	var delimiter = ",";
	
	if(arrayLen(arguments) gte 3) delimiter = arguments[3];

	for (i=1; i le listLen(list, delimiter); i=i+1) {
		if ( ReFindNoCase(regexp, listGetAt(list, i, delimiter)) ) 	return i;
	}
	
	return 0;
}
</cfscript>