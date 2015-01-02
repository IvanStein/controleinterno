class AtendentesController < ApplicationController
  before_action :set_atendente, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @atendentes = Atendente.all
    respond_with(@atendentes)
  end

  def show
    respond_with(@atendente)
  end

  def new
    @atendente = Atendente.new
    respond_with(@atendente)
  end

  def edit
  end

  def create
    @atendente = Atendente.new(atendente_params)
    @atendente.save
    respond_with(@atendente)
  end

  def update
    @atendente.update(atendente_params)
    respond_with(@atendente)
  end

  def destroy
    @atendente.destroy
    respond_with(@atendente)
  end

  private
    def set_atendente
      @atendente = Atendente.find(params[:id])
    end

    def atendente_params
      params.require(:atendente).permit(:name)
    end
end
