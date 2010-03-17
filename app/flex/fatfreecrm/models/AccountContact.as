package fatfreecrm.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="account_contacts")]
  [Bindable]
  public class AccountContact extends RxModel {
    public static const LABEL:String = "deletedAt";

    [DateTime]
    public var deletedAt:Date = new Date;

    [BelongsTo]
    public var account:Account;

    [BelongsTo]
    public var contact:Contact;

    public function AccountContact() {
      super(LABEL);
    }
  }
}
