class PagesController < ApplicationController
  def home
    @populars = UseCase.where(popular: true)
  end

  def search
    @query = params[:query]
    @use_cases = UseCase.search_by_title_and_description_and_category(@query).paginate(page: params[:page], per_page: 5)
    @use_cases_total = UseCase.search_by_title_and_description_and_category(@query).size
  end
end
