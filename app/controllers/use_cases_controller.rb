class UseCasesController < ApplicationController
  def index
    @use_cases_total = UseCase.all
    @use_cases = UseCase.paginate(page: params[:page], per_page: 5).order('created_at DESC')
  end

  def show
    @use_case = UseCase.find(params[:id])
    @use_case_total = UseCase.all
  end
end
