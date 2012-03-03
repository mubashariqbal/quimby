module Foursquare
  class Menu
    def initialize(foursquare, json)
      @foursquare, @json = foursquare, json
    end

    def id
      @json["menuId"]
    end

    def name
      @json["name"]
    end

    def sections_count
      @json["entries"]["count"]
    end

    def sections
      @json["entries"]["items"].map do |item|
        Foursquare::MenuSection.new(@foursquare, item)
      end
    end

  end
end
