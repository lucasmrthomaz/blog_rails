class ComentariosController < ApplicationController
  before_action :set_comentario, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @comentarios = Comentario.all
    respond_with(@comentarios)
  end

  def show
    respond_with(@comentario)
  end

  def new
    @comentario = Comentario.new
    @post = Post.new(params[:post_id])
    respond_with(@comentario)
  end

  def edit
  end

  def create
    @post = Post.find(params[:post_id])
    @comentarios = @post.comentarios.create(comentario_params)
    redirect_to posts_path(@post)
    #@comentario = Comentario.new(comentario_params)
    #@comentario.save
    #respond_with(@comentario)
  end

  def update
    @comentario.update(comentario_params)
    respond_with(@comentario)
  end

  def destroy
    @comentario.destroy
    respond_with(@comentario)
  end

  private
    def set_comentario
      @comentario = Comentario.find(params[:id])
    end

    def comentario_params
      params.require(:comentario).permit(:nome, :corpo, :post_id)
    end
end
