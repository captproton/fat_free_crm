package fatfreecrm.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="account_opportunities")]
  [Bindable]
  public class AccountOpportunity extends RxModel {
    public static const LABEL:String = "deletedAt";

    [DateTime]
    public var deletedAt:Date = new Date;

    [BelongsTo]
    public var account:Account;

    [BelongsTo]
    public var opportunity:Opportunity;

    public function AccountOpportunity() {
      super(LABEL);
    }
  }
}
