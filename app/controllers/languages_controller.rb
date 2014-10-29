class LanguagesController < ApplicationController
  def index
    #params
    @languages = Language.all
  end

  def new

    render :layout => "basic"
  end

  def create
    @language = Language.new(params[:language])
    @language.save
    redirect_to "/languages/index"
  end

  def create_form
    @language = Language.new
    @language.title = params[:title]
    @language.save
    redirect_to "/languages/index"
  end
end
