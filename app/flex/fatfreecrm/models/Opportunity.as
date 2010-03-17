package fatfreecrm.models {
  import org.restfulx.collections.ModelsCollection;
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="opportunities")]
  [Bindable]
  public class Opportunity extends RxModel {
    public static const LABEL:String = "name";

	public var name:String = "";
	
	public var assignedTo:int = 0;


    public var access:String = "";

    public var source:String = "";

    public var stage:String = "";

    public var probability:int = 0;

    public var amount:Number = new Number;

    public var discount:Number = new Number;

    public var closesOn:Date = new Date;

    [DateTime]
    public var deletedAt:Date = new Date;

    public var backgroundInfo:String = "";

    [BelongsTo]
    public var user:User;

    [BelongsTo]
    public var campaign:Campaign;

    [HasMany]
    public var accountOpportunities:ModelsCollection;
    
    [HasMany]
    public var contactOpportunities:ModelsCollection;
    
    public function Opportunity() {
      super(LABEL);
    }
  }
}
