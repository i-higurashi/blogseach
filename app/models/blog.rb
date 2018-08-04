class Blog < ApplicationRecord

	attachment :image

 def self.search(search)
    if search
      Blog.where(Blog.arel_table[:title].matches("%#{search}%")) 
    else
      Blog.all
    end
  end
end