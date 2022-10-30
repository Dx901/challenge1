require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###

a1 = Author.new("Author_1", ["category1", "category2"])
a1.magazines
a1.add_article(mag1, "title3")
a1.add_article(mag4, "title2")
a1.add_article(mag3, "title6")
a1.add_article(mag2, "title5")

a2 = Author.new("Author_2", ["category3", "category4"])
a2.magazines
a2.add_article(mag5, "title 5")


mag1 = Magazine.new("mag1", "category 1")
mag2 = Magazine.new("mag2", "category 2")
mag3 = Magazine.new("mag3", "category 3")
mag4 = Magazine.new("mag4", "category 4")
mag5 = Magazine.new("mag5", "category 5")

mag1.contributors
mag2.contributors
mag3.contributors

article1 = Article.new(a1, mag1, "title1")
article2 = Article.new(a2, mag3, "title2")
article2 = Article.new(a3, mag3, "title3")





### DO NOT REMOVE THIS
binding.pry

0
