class UseCasesController < ApplicationController
  def index
    @use_cases = UseCase.all.order("created_at DESC")
  end

  def show
    @use_case = UseCase.find(params[:id])
  end
end
