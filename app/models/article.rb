class Article 
    attr_accessor :name
    attr_reader :author, :magazine, :title
    @@all = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << all
    end

    def author
        @author.name
    end

    def magazine
        @magazine.name
    end

    def self.all
        @@all
    end

    # def change 
    #     create_table :articles do |t|
    #       t.string :name
    #       t.integer :magazine_id
    #       t.integer :author_id
    #     end
    #   end

end
