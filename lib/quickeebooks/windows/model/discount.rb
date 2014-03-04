require 'time'
require 'quickeebooks/windows/model/price'
require 'quickeebooks/windows/model/meta_data'
require 'quickeebooks/windows/model/account_reference'
require 'quickeebooks/windows/model/vendor_reference'

module Quickeebooks
  module Windows
    module Model
      class Discount < Quickeebooks::Windows::Model::IntuitType
        include ActiveModel::Validations

        XML_COLLECTION_NODE = 'Discounts'
        XML_NODE = 'Discount'
        
        # https://services.intuit.com/sb/discount/v2/<realmID>
        REST_RESOURCE = "discount"

        xml_name 'Discount'
        xml_accessor :id, :from => 'Id', :as => Quickeebooks::Windows::Model::Id
        xml_accessor :sync_token, :from => 'SyncToken', :as => Integer
        xml_accessor :external_key, :from => 'ExternalKey'
        xml_accessor :synchronized, :from => 'Synchronized'
        xml_accessor :meta_data, :from => 'MetaData', :as => Quickeebooks::Windows::Model::MetaData
        xml_accessor :custom_fields, :from => 'CustomField', :as => [Quickeebooks::Windows::Model::CustomField]
        xml_accessor :draft
        xml_accessor :object_state, :from => 'ObjectState'
        xml_accessor :name, :from => 'Name'
        xml_accessor :desc, :from => 'Desc'
        xml_accessor :taxable, :from => 'Taxable'
        xml_accessor :active
        xml_accessor :amount, :from => 'Amount', :as => Float
        xml_accessor :discount_account_id, :from => 'DiscountAccountId', :as => Quickeebooks::Windows::Model::Id
        xml_accessor :discount_account_name, :from => 'DiscountAccountName'

      end
    end
  end

end