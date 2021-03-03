class PagesController < ApplicationController
  def home
    @populars = UseCase.where(popular: true)
  end

  def search
    @query = params[:query]
    @use_cases = UseCase.search_by_title_and_description_and_category(@query)
  end
end
