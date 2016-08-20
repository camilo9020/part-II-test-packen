class Admin::PrizesController < ApplicationController
  before_action :set_admin_prize, only: [:show, :edit, :update, :destroy]


   layout "admin"
  # GET /admin/prizes/1
  # GET /admin/prizes/1.json
  def show

    @admin_condition = Admin::Condition.new
  end

  # GET /admin/prizes/new
  def new
    @admin_prize = Admin::Prize.new
  end

  # GET /admin/prizes/1/edit
  def edit
  end

  # POST /admin/prizes
  # POST /admin/prizes.json
  def create
    @admin_prize = Admin::Prize.new(admin_prize_params)

    respond_to do |format|
      if @admin_prize.save
        format.html { redirect_to @admin_prize, notice: 'Prize was successfully created.' }
        format.json { render :show, status: :created, location: @admin_prize }
      else
        format.html { render :new }
        format.json { render json: @admin_prize.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/prizes/1
  # PATCH/PUT /admin/prizes/1.json
  def update
    respond_to do |format|
      if @admin_prize.update(admin_prize_params)
        format.html { redirect_to @admin_prize, notice: 'Prize was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_prize }
      else
        format.html { render :edit }
        format.json { render json: @admin_prize.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/prizes/1
  # DELETE /admin/prizes/1.json
  def destroy
    @admin_prize.destroy
    respond_to do |format|
      format.html { redirect_to admin_prizes_url, notice: 'Prize was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_prize
      @admin_prize = Admin::Prize.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_prize_params
      params.require(:admin_prize).permit(:name, :description, :amount)
    end
end
