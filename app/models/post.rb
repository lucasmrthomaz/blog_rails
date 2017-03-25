class Post < ActiveRecord::Base

	# Association for comentarios
	has_many :comentario

end
