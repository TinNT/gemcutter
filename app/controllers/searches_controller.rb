class SearchesController < ApplicationController

  def new
    if params[:query]
      @match = Rubygem.search_exact(params[:query]).with_versions.find(:first)
      @gems = Rubygem.search(params[:query]).with_versions.paginate(:page => params[:page])
    end
  end

end
