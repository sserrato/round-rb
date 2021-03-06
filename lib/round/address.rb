module Round
  class Address < Round::Base
    def self.hash_identifier
      "string"
    end 
  end

  class AddressCollection < Round::Collection

    def content_type
      Round::Address
    end

    def create
      resource = @resource.create
      address = Round::Address.new(resource: resource, client: @client)
      self.add(address)
      address
    end
  end
end