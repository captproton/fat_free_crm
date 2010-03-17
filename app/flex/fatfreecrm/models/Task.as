package fatfreecrm.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="tasks")]
  [Bindable]
  public class Task extends RxModel {
    public static const LABEL:String = "name";

    public var assignedTo:int = 0;

    public var completedBy:int = 0;

    public var name:String = "";

    public var assetType:String = "";

    public var priority:String = "";

    public var category:String = "";

    public var bucket:String = "";

    [DateTime]
    public var dueAt:Date = new Date;

    [DateTime]
    public var completedAt:Date = new Date;

    [DateTime]
    public var deletedAt:Date = new Date;

    public var backgroundInfo:String = "";

    [BelongsTo]
    public var user:User;

    [BelongsTo(polymorphic="true", dependsOn="Model1, Model2")]
    public var asset:Object;
      
    public function Task() {
      super(LABEL);
    }
  }
}
