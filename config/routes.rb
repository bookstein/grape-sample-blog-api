require 'grape'

Simple::Application.routes.draw do
  #mount Blog::API => "/blog"
  mount API::Root => "/"
end
