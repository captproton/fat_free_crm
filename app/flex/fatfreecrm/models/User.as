package fatfreecrm.models {
  import org.restfulx.collections.ModelsCollection;
  import org.restfulx.models.RxModel;
  
  [Resource(name="users")]
  [Bindable]
  public class User extends RxModel {
    public static const LABEL:String = "title";

    public var title:String;

    [Ignored]
    public var username:String;
    

    [HasMany]
    public var permissions:ModelsCollection;
    
    [HasMany]
    public var preferences:ModelsCollection;
    
    [HasMany]
    public var comments:ModelsCollection;
    
    [HasMany]
    public var activities:ModelsCollection;
    
    [HasMany]
    public var avatars:ModelsCollection;
    
    [HasMany]
    public var campaigns:ModelsCollection;
    
    [HasMany]
    public var opportunities:ModelsCollection;
    
    [HasMany]
    public var tasks:ModelsCollection;
    
    [HasMany]
    public var accounts:ModelsCollection;
    
    [HasMany]
    public var contacts:ModelsCollection;
    
    [HasMany]
    public var leads:ModelsCollection;
        
    public function User() {
      super(LABEL);
    }
  }
}
