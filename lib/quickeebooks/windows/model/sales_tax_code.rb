require 'quickeebooks'
require 'quickeebooks/windows/model/id'
require 'quickeebooks/windows/model/external_key'
require 'quickeebooks/windows/model/custom_field'
require 'quickeebooks/windows/model/meta_data'

module Quickeebooks
  module Windows
    module Model
      class SalesTaxCode < Quickeebooks::Windows::Model::IntuitType

        XML_COLLECTION_NODE = 'SalesTaxCodes'
        XML_NODE = 'SalesTaxCode'
        
        # https://services.intuit.com/sb/salestaxcode/v2/<realmID>
        REST_RESOURCE = "salestaxcode"
        
        xml_convention :camelcase
        xml_accessor :id, :as => Quickeebooks::Windows::Model::Id
        xml_accessor :sync_token
        xml_accessor :meta_data, :from => 'MetaData', :as => Quickeebooks::Windows::Model::MetaData
        xml_accessor :external_key, :as => Quickeebooks::Windows::Model::ExternalKey
        xml_accessor :synchronized
        xml_accessor :custom_fields, :as => [Quickeebooks::Windows::Model::CustomField]
        xml_accessor :name
        xml_accessor :desc
        xml_accessor :active
        xml_accessor :taxable
      end
    end
  end
end