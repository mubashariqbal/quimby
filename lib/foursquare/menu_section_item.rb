module Foursquare
  class MenuSectionItem
    def initialize(foursquare, json)
      @foursquare, @json = foursquare, json
    end

    def id
      @json["entryId"]
    end

    def name
      @json["name"]
    end

    def description
      @json["description"]
    end

    def prices
      @json["prices"]
    end
    
  end
end
