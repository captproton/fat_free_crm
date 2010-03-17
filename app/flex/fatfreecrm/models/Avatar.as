package fatfreecrm.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="avatars")]
  [Bindable]
  public class Avatar extends RxModel {
    public static const LABEL:String = "entityType";

    public var entityType:String = "";

    public var imageFileSize:int = 0;

    public var imageFileName:String = "";

    public var imageContentType:String = "";

    [BelongsTo]
    public var user:User;

    [BelongsTo(polymorphic="true", dependsOn="Model1, Model2")]
    public var entity:Object;
      
    [Ignored]
    public var attachmentUrl:String;
    
    public function Avatar() {
      super(LABEL);
    }
  }
}
