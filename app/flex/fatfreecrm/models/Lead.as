package fatfreecrm.models {
  import org.restfulx.collections.ModelsCollection;
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="leads")]
  [Bindable]
  public class Lead extends RxModel {
    public static const LABEL:String = "assignedTo";

    public var assignedTo:int = 0;

    public var firstName:String = "";

    public var lastName:String = "";

    public var access:String = "";

    public var title:String = "";

    public var company:String = "";

    public var source:String = "";

    public var status:String = "";

    public var referredBy:String = "";

    public var email:String = "";

    public var altEmail:String = "";

    public var phone:String = "";

    public var mobile:String = "";

    public var blog:String = "";

    public var linkedin:String = "";

    public var facebook:String = "";

    public var twitter:String = "";

    public var rating:int = 0;

    public var doNotCall:Boolean = false;

    [DateTime]
    public var deletedAt:Date = new Date;

    public var backgroundInfo:String = "";

    [BelongsTo]
    public var user:User;

    [BelongsTo]
    public var campaign:Campaign;

    [HasMany]
    public var contacts:ModelsCollection;
    
    public function Lead() {
      super(LABEL);
    }
  }
}
