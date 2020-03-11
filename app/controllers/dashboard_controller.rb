class DashboardController < ApplicationController
  def show
    list_of_alunos
  end

  private

  def list_of_alunos
    @alunos = ""
  end
end