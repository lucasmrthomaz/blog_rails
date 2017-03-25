class Comentario < ActiveRecord::Base
  #Association for Post
  belongs_to :post
end
