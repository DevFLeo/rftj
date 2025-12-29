class GInstituicoesController < ApplicationController
  before_action :set_g_instituicao, only: %i[ show edit update destroy ]

  # GET /g_instituicoes or /g_instituicoes.json
  def index
    @g_instituicoes = GInstituicao.all
  end

  # GET /g_instituicoes/1 or /g_instituicoes/1.json
  def show
  end

  # GET /g_instituicoes/new
  def new
    @g_instituicao = GInstituicao.new
  end

  # GET /g_instituicoes/1/edit
  def edit
  end

  # POST /g_instituicoes or /g_instituicoes.json
  def create
    @g_instituicao = GInstituicao.new(g_instituicao_params)

    respond_to do |format|
      if @g_instituicao.save
        format.html { redirect_to @g_instituicao, notice: "G instituicao was successfully created." }
        format.json { render :show, status: :created, location: @g_instituicao }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @g_instituicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g_instituicoes/1 or /g_instituicoes/1.json
  def update
    respond_to do |format|
      if @g_instituicao.update(g_instituicao_params)
        format.html { redirect_to @g_instituicao, notice: "G instituicao was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @g_instituicao }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @g_instituicao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g_instituicoes/1 or /g_instituicoes/1.json
  def destroy
    @g_instituicao.destroy!

    respond_to do |format|
      format.html { redirect_to g_instituicoes_path, notice: "G instituicao was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g_instituicao
      @g_instituicao = GInstituicao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def g_instituicao_params
      params.require(:g_instituicao).permit(:nome, :historico)
    end
end
