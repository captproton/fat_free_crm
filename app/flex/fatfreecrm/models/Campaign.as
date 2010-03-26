package fatfreecrm.models {
  import org.restfulx.collections.ModelsCollection;
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="campaigns")]
  [Bindable]
  public class Campaign extends RxModel {
    public static const LABEL:String = "name";

    // public var assignedTo:int = 0;

    public var name:String = "";

    public var access:String = "";

    public var status:String = "";

    public var budget:Number = new Number;

    public var targetLeads:int = 0;

    public var targetConversion:Number = new Number;

    public var targetRevenue:Number = new Number;

    public var leadsCount:int = 0;

    public var opportunitiesCount:int = 0;

    public var revenue:Number = new Number;

    public var startsOn:Date = new Date;

    public var endsOn:Date = new Date;

    public var objectives:String = "";

    [DateTime]
    public var deletedAt:Date = new Date;

    public var backgroundInfo:String = "";

    [BelongsTo]
    public var user:User;

	[BelongsTo]
	public var assignee:User;
	
    [HasMany]
    public var opportunities:ModelsCollection;
    
    [HasMany]
    public var leads:ModelsCollection;
    
    public function Campaign() {
      super(LABEL);
    }
  }
}
