class CompaniesController < ApplicationController
  def index
    @companies = Company.all
  end

  def new
  end

  def create
  end

  def show
    @company = Company.find(params[:id])
  end
end
