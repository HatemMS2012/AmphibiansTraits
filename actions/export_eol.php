<?php


class actions_export_eol  {
        
    
       function handle(&$params){
        $app =& Dataface_Application::getInstance();  // reference to Dataface_Application object
        $auth =& Dataface_AuthenticationTool::getInstance(); // reference to Dataface_Authentication object
        
        // Perform a custom SQL Query:
       $res = mysql_query("select count(id) from taxonomic_identity");
       
		echo $res;

    }

}


