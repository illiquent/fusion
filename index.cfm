<cfscript>
queryComp = createObject("component","Hola");
showQuery = queryComp.getQuery();
 
for (row in showQuery) {
	
	writeOutput(row.firstname & " " & row.lastname) ;
}
</cfscript>




  