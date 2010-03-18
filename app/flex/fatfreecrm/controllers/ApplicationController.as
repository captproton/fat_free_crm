package fatfreecrm.controllers {
  import fatfreecrm.models.*;
  import fatfreecrm.commands.*;

	import mx.core.Application;		
  import org.restfulx.Rx;
  import org.restfulx.controllers.RxApplicationController;
  import org.restfulx.utils.RxUtils;
  import mx.core.FlexGlobals; 


  public class ApplicationController extends RxApplicationController {
    private static var controller:ApplicationController;
    
    public static var models:Array = [Account, AccountContact, AccountOpportunity, Activity, Avatar, Campaign, Comment, Contact, ContactOpportunity, Lead, Opportunity, Permission, Preference, Task, User]; /* Models */
    
    public static var commands:Array = []; /* Commands */
    
    public function ApplicationController(enforcer:SingletonEnforcer, 
      extraServices:Array, defaultServiceId:int = -1) {
      super(commands, models, extraServices, defaultServiceId);
    }
    
    public static function get instance():ApplicationController {
      if (controller == null) initialize();
      return controller;
    }
    
    public static function initialize(extraServices:Array = null, 
      defaultServiceId:int = -1, airDatabaseName:String = null):void {
      if (!RxUtils.isEmpty(airDatabaseName)) Rx.airDatabaseName = airDatabaseName;
      controller = new ApplicationController(new SingletonEnforcer, 
        extraServices, defaultServiceId);
			Rx.sessionToken = FlexGlobals.topLevelApplication.parameters.session_token; 

			Rx.authenticityToken = FlexGlobals.topLevelApplication.parameters.authenticity_token;
    }
  }
}

class SingletonEnforcer {}
