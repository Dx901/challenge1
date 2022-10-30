class Magazine
   attr_accessor :name, :category

   has_many :articles
   has_many :authors, through: :articles


  def initialize(name, category)
    @name = name
    @category = category

  end

  def magazine_contributors
    puts "#{author_id}"
  end


  def article_titles
    self.magazine.pluck(article.title)
  end

  def contributing_authors
    if author.articles > 2
      return "#{author.name}"
    else
      puts "I think the author has one(1) article"
    end

  end


end
