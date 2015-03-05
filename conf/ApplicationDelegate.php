<?php

class conf_ApplicationDelegate {

	public function beforeHandleRequest(){
		Dataface_Application::getInstance()
			->addHeadContent(
				sprintf('<link rel="stylesheet" type="text/css" href="%s"/>',
					htmlspecialchars(DATAFACE_SITE_URL.'/style.css')
				)
			);
	}
	
	
	function getPermissions(&$record){
         $auth =& Dataface_AuthenticationTool::getInstance();
         $user =& $auth->getLoggedInUser();
         if ( !isset($user) ) return Dataface_PermissionsTool::NO_ACCESS();
             // if the user is null then nobody is logged in... no access.
             // This will force a login prompt.
         $role = $user->val('Role');
		 if (  $role == 'ADMIN' ){
		   return Dataface_PermissionsTool::ALL();
		 }
		 if (  $role == 'READ ONLY' ){
		   return Dataface_PermissionsTool::READ_ONLY();
		 }
		 if (  $role == 'Test' ){
		   return Dataface_PermissionsTool::getRolePermissions('Test');
		 }
		 
         return Dataface_PermissionsTool::getRolePermissions($role);
             // Returns all of the permissions for the user's current role.
      }
	  
	/*  
	function getPermissions(&$record){
		$auth =& Dataface_AuthenticationTool::getInstance();
		$user =& $auth->getLoggedInUser();
		
		
		
		 if ( $user and $user->val('role') == 'EDITOR' ){
			return Dataface_PermissionsTool::getRolePermissions('EDITOR');
		} else if ( $user and $user->val('role') == 'MANAGER' ){
			return Dataface_PermissionsTool::getRolePermissions('MANAGER');
		}
		if ( $user ){
			// Steve is logged in so we give him special permissions
			return Dataface_PermissionsTool::READ_ONLY();
		} 
		else {
			
			return Dataface_PermissionsTool::NO_ACCESS();
		}
	}
	
	*/
	function getRoles(&$record){
		$user =& Dataface_AuthenticationTool::getInstance()->getLoggedInUser();
		
		
		if ( $user and $user->val('Role') == 'ADMIN' ){
			
			return 'ADMIN';
		} 
		if ( $user and $user->val('role') == 'READ ONLY' ){
			return 'READ ONLY';
		}
		return 'NO ACCESS'; 
	}


   /*
    function beforeRegister(&$record){
        // mail the admin to let him know that the registration is occurring.
        mail('h.m.sergieh@gmail.com', 'New registration', 'A new user '.$record->val('username').' has registered');
    }
	*/
	function afterRegister(&$record){
        // mail the admin to let him know that the registration is occurring.
      	return Dataface_PermissionsTool::READ_ONLY();
    }
	
	/*
	function getRegistrationActivationEmailInfo(&$record, $activationURL){
        return 'Thanks for registering.  Please visit '.$activationURL.' to activate.';   
    }
	*/

}
