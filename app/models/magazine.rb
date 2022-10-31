class Magazine
   attr_accessor :name, :category

   @@all=[]
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
