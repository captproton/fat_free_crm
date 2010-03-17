package fatfreecrm.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="preferences")]
  [Bindable]
  public class Preference extends RxModel {
    public static const LABEL:String = "name";

    public var name:String = "";

    public var value:String = "";

    [BelongsTo]
    public var user:User;

    public function Preference() {
      super(LABEL);
    }
  }
}
