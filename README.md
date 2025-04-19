# README

Intro to Ruby on Rails 7 Fullstack Tutorial | Rails for Beginners Part 1
https://www.youtube.com/watch?v=TlgSp2XPCY4&list=PL3mtAHT_eRezB9fnoIcKS4vYFjm23vddb

rails new blog_demo -c bootstrap

rails g controller pages home about 

}%{ update root path, update content, styling

rails g scaffold Posts title body:string

rails db:migrate

}%{ create posts, seeds, styling

rails db:seed

}%{ link blog to home, 
rails g migration add_views_to_posts views:integer

}%{ set default:0 in migration file

rails db:migrate

}%{ update show in posts to update views, add views to show.html.erb 

}%{ add devise to gemfile

bundle install

rails g devise:install

}%{ create alerts partial and render in layout > application.html.erb

rails g devise User

rails db:migrate

}%{ restart server for devise to work, add before action to posts controller

rails g migration add_user_to_posts user:belongs_to

}%{ update models with has_many, belongs_t0

rails c

Post.destroy_all

}%{ update seeds, update create  method in post model

rails db:migrate

}%{ add posted by post.user.email

rails g migration add_name_to_user name

rails g devise:views

}%{ add "edit account" to dropdown, add name field to form in user views

rails g devise:controllers users

