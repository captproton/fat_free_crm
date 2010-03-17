package fatfreecrm.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="contact_opportunities")]
  [Bindable]
  public class ContactOpportunity extends RxModel {
    public static const LABEL:String = "role";

    public var role:String = "";

    [DateTime]
    public var deletedAt:Date = new Date;

    [BelongsTo]
    public var contact:Contact;

    [BelongsTo]
    public var opportunity:Opportunity;

    public function ContactOpportunity() {
      super(LABEL);
    }
  }
}
