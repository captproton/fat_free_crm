package fatfreecrm.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="permissions")]
  [Bindable]
  public class Permission extends RxModel {
    public static const LABEL:String = "assetType";

    public var assetType:String = "";

    [BelongsTo]
    public var user:User;

    [BelongsTo(polymorphic="true", dependsOn="Model1, Model2")]
    public var asset:Object;
      
    public function Permission() {
      super(LABEL);
    }
  }
}
