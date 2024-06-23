class PagesController < ApplicationController

  def index
  @pages = Page.all.where.not(:slug => "")
  end

  def show
    @page = Page.find(params[:id])
  end

end