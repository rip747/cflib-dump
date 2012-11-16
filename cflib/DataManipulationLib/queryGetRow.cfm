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
 * Return a single row from a query.
 * 
 * @param qry 	 Query to inspect. (Required)
 * @param row 	 Numeric row to retrieve. (Required)
 * @return Returns a query. 
 * @author Tony Felice (tfelice@reddoor.biz) 
 * @version 0, February 14, 2009 
 */
function queryGetRow(qry,row){
	var result = queryNew('');
	var cols = listToArray(arguments.qry.columnList);
	var i = '';

	for(i=1; i lte arrayLen(cols); i=i+1){
		queryAddColumn(result, cols[i], listToArray(arguments.qry[cols[i]][arguments.row]));
	}

	return result;
}
</cfscript>