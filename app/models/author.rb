class Author 
  attr_reader :name

  has_many :articles
  has_many :magazines, through: :articles


  def initialize(name)
    @name = name
  end

  def articles
    return articles
  end

  def magazines
    return "#{magazine_id}"

  end


  def add_article(magazine, title)
    Article.create(title: title, magazine_id: magazine_id)
  end

  def topic_areas
      self.author.articles(:articles)
  end

  def change 
    create_table :authors do |t|
      t.string :name
    end
  end


end
