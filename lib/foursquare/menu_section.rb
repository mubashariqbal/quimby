module Foursquare
  class MenuSection
    def initialize(foursquare, json)
      @foursquare, @json = foursquare, json
    end

    def id
      @json["sectionId"]
    end

    def name
      @json["name"]
    end

    def items_count
      @json["entries"]["count"]
    end

    def items
      @json["entries"]["items"].map do |item|
        Foursquare::MenuSectionItem.new(@foursquare, item)
      end
    end
    
  end
end
