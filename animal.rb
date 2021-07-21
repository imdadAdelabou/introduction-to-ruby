class Animal
    attr_accessor :type_of_membre
    def initialize(type_of_membre)
        @type_of_membre = type_of_membre
    end
end

lion = Animal.new("pattes")