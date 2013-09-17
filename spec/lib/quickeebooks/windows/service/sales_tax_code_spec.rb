describe "Quickeebooks::Windows::Service::SalesTaxCode" do
  before(:all) do
    construct_windows_service :sales_tax_code
  end

  it "can fetch a list of sales tax codes" do
    xml = windowsFixture("sales_tax_codes.xml")
    model = Quickeebooks::Windows::Model::SalesTaxCode
    FakeWeb.register_uri(:post, @service.url_for_resource(model::REST_RESOURCE), :status => ["200", "OK"], :body => xml)
    sales_tax_codes = @service.list
    sales_tax_codes.entries.count.should == 3

    stc = sales_tax_codes.entries.detect { |stc| stc.name == "MN" }
    stc.should_not == nil
    stc.id.value.should == "6"
    stc.desc.should == 'Min tax codes'
    stc.taxable.should == "true"
    stc.active.should == "true"
  end

end
