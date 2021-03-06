class AtendimentosController < ApplicationController
  before_action :set_atendimento, only: [:show, :edit, :update, :destroy ]

  respond_to :html

  def index
   @atendimentos = Atendimento.all
      respond_to do |format|
      format.html
      format.csv { send_data @atendimentos.to_csv }
      format.xls 
    end
 end
  
  def import
    Atendimento.import(params[:file])
    redirect_to root_url, notice: "Atendimentos importados."
  end

  def show
    respond_with(@atendimento)
  end

  def new
    @atendimento = Atendimento.new
    respond_with(@atendimento)
  end

  def edit
  end

  def create
    @atendimento = Atendimento.new(atendimento_params)
    @atendimento.save
    respond_with(@atendimento)
  end

  def update
    @atendimento.update(atendimento_params)
    respond_with(@atendimento)
  end

  def destroy
    @atendimento.destroy
    respond_with(@atendimento)
  end

  private
    def set_atendimento
      @atendimento = Atendimento.find(params[:id])
    end

    def atendimento_params
      params.require(:atendimento).permit(:data, :assunto, :cliente_id, :usuario_id, :atendente_id, :area_id)
    end





end
