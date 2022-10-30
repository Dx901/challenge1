class Article 
    attr_accessor :name
    attr_reader :author, :magazine, :title
    belongs_to :magazine_id
    belongs_to :author_id

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
    end

    def author
        puts "#{self.author.name}"
    end

    def magazine
        puts "#{self.magazine}"
    end

    

    def change 
        create_table :articles do |t|
          t.string :name
          t.integer :magazine_id
          t.integer :author_id
        end
      end

end
