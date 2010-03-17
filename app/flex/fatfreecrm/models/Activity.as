package fatfreecrm.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="activities")]
  [Bindable]
  public class Activity extends RxModel {
    public static const LABEL:String = "info";

    public var subjectType:String = "";

    public var action:String = "";

    public var info:String = "";

    public var sub_rosa:Boolean = false;

    [BelongsTo]
    public var user:User;

    [BelongsTo(polymorphic="true", dependsOn="Model1, Model2")]
    public var subject:Object;
      
    public function Activity() {
      super(LABEL);
    }
  }
}
