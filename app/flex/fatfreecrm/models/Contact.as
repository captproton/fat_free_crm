package fatfreecrm.models {
  import org.restfulx.collections.ModelsCollection;
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="contacts")]
  [Bindable]
  public class Contact extends RxModel {
    public static const LABEL:String = "lastName";

    // public var assignedTo:int = 0;

    public var reportsTo:int = 0;

    public var firstName:String = "";

    public var lastName:String = "";

    public var access:String = "";

    public var title:String = "";

    public var department:String = "";

    public var source:String = "";

    public var email:String = "";

    public var altEmail:String = "";

    public var phone:String = "";

    public var mobile:String = "";

    public var fax:String = "";

    public var blog:String = "";

    public var linkedin:String = "";

    public var facebook:String = "";

    public var twitter:String = "";

    public var bornOn:Date = new Date;

    public var doNotCall:Boolean = false;

    [DateTime]
    public var deletedAt:Date = new Date;

    public var backgroundInfo:String = "";

    [BelongsTo]
    public var user:User;

	[BelongsTo]
	public var assignee:User;

	[BelongsTo]
    public var lead:Lead;

    [HasMany]
    public var accountContacts:ModelsCollection;
    
    [HasMany]
    public var contactOpportunities:ModelsCollection;
    
    public function Contact() {
      super(LABEL);
    }
  }
}
