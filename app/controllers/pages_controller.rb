class PagesController < ApplicationController

  def index
  @pages = Page.all.where(:slug => "")
  end

  def show
    @page = Page.find(params[:id])
  end

end