package fatfreecrm.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="comments")]
  [Bindable]
  public class Comment extends RxModel {
    public static const LABEL:String = "commentableType";

    public var commentableType:String = "";

    public var sub_rosa:Boolean = false;

    public var title:String = "";

    public var comment:String = "";

    [BelongsTo]
    public var user:User;

    [BelongsTo(polymorphic="true", dependsOn="Model1, Model2")]
    public var commentable:Object;
      
    public function Comment() {
      super(LABEL);
    }
  }
}
