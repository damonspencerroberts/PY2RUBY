class UseCasesController < ApplicationController
  def show
    @use_case = UseCase.find(params[:id])
  end
end
