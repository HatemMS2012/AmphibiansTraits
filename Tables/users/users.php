<?php
class tables_users {
 function getPermissions($record){
        #if ( isAdmin() ) return null;
        $perms['register'] = 1;
		
        return $perms;
     

	}
}
