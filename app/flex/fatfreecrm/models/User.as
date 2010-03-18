package fatfreecrm.models {
  import org.restfulx.collections.ModelsCollection;
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="users")]
  [Bindable]
  public class User extends RxModel {
    public static const LABEL:String = "username";

    public var username:String = "";

    public var email:String = "";

    public var firstName:String = "";

    public var lastName:String = "";

    public var title:String = "";

    public var company:String = "";

    public var altEmail:String = "";

    public var phone:String = "";

    public var mobile:String = "";

    public var aim:String = "";

    public var yahoo:String = "";

    public var google:String = "";

    public var skype:String = "";

    [HasMany]
    public var leads:ModelsCollection;
    
    public function User() {
      super(LABEL);
    }
  }
}
