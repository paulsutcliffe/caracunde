class HomeController < ApplicationController
  def index
    @posts = Post.all
    @informacao = Informacao.first
  end


end
