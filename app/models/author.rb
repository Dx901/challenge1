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

  # def change 
  #   create_table :authors do |t|
  #     t.string :name
  #   end
  # end


end
