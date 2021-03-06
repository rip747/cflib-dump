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
 * Remove duplicates from a list.
 * 
 * @param lst 	 List to parse. (Required)
 * @param delim 	 List delimiter. Defaults to a comma. (Optional)
 * @return Returns a string. 
 * @author Keith Gaughan (keith@digital-crew.com) 
 * @version 1, August 22, 2005 
 */
function listRemoveDuplicates(lst) {
    var i       = 0;
    var delim   = ",";
    var asArray = "";
    var set     = StructNew();

    if (ArrayLen(arguments) gt 1) delim = arguments[2];

    asArray = ListToArray(lst, delim);
    for (i = 1; i LTE ArrayLen(asArray); i = i + 1) set[asArray[i]] = "";

    return structKeyList(set, delim);
}
</cfscript>