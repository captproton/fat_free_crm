package fatfreecrm.models {
  import org.restfulx.collections.ModelsCollection;
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="accounts")]
  [Bindable]
  public class Account extends RxModel {
    public static const LABEL:String = "name";

    public var assignedTo:int = 0;

    public var name:String = "";

    public var access:String = "";

    public var website:String = "";

    public var tollFreePhone:String = "";

    public var phone:String = "";

    public var fax:String = "";

    [DateTime]
    public var deletedAt:Date = new Date;

    public var email:String = "";

    public var backgroundInfo:String = "";

    [BelongsTo]
    public var user:User;

    [HasMany]
    public var accountContacts:ModelsCollection;
    
    [HasMany]
    public var accountOpportunities:ModelsCollection;
    
    public function Account() {
      super(LABEL);
    }
  }
}
