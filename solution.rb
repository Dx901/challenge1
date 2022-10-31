# Please copy/paste all three classes into this file to submit your solution!



# Article_solution
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


end


#Author_solution
class Author 
    attr_accessor :name
  
    
    def initialize(name, category=[])
      @category = category
      @name = name
    end
  
    def articles
      # return articles
      Article.all.filter {|article| article.author==@name}
  
    end
  
    def magazines
      # return "#{magazine_id}"
      Article.map {|article| article.magazine}.uniq
  
    end
  
  
    def add_article(magazine, title)
      Article.create(self, title: title, magazine_id: magazine_id)
    end
  
    def topic_areas
      @category.uniq
    end
  
    
  end

  
#magazine_solution

class Magazine
    @@all = []
    attr_accessor :name, :category
 
   def initialize(name, category)
     @name = name
     @category = category
     @all << self
   end
 
   def self.all
     @@all
   end
 
   def category
     @category = category
   end
 
   def name
     @name
   end
 
   def articles_magazines
     Article.all.filter{|article| article.magazine==@name}
   end
 
   def magazine_contributors
     articles_magazines.map{|article|article.author}
   end
 
   def contributors
     magazine_contributors.uniq
   end
 
 
   def article_titles
     # self.magazine.pluck(article.title)
     articles_magazines.map{|article|article.title}
   end
 
   def contributing_authors
     main_authors = []
     magazine_contributors.tally.each {|key, value|
     value>2 && (magazine_contributors << key)}
     main_authors
   end
 
 
 end
 
