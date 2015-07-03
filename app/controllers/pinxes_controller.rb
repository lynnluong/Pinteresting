class PinxesController < ApplicationController
before_action :authenticate_user!, except: [:index, :show]
before_action :set_pinx, only: [:show, :edit, :update, :destroy]
before_action :correct_user, only: [:edit, :update, :destroy]
  # GET /pinxes
  # GET /pinxes.json
  def index
    @pinxes = Pinx.all
  end

  # GET /pinxes/1
  # GET /pinxes/1.json
  def show
  end

  # GET /pinxes/new
  def new
    @pinx = current_user.pinxes.build

  end

  # GET /pinxes/1/edit
  def edit
  end

  # POST /pinxes
  # POST /pinxes.json
  def create
    @pinx = current_user.pinxes.build(pinx_params)

    respond_to do |format|
      if @pinx.save
        format.html { redirect_to @pinx, notice: 'Pinx was successfully created.' }
        format.json { render :show, status: :created, location: @pinx }
      else
        format.html { render :new }
        format.json { render json: @pinx.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pinxes/1
  # PATCH/PUT /pinxes/1.json
  def update
    respond_to do |format|
      if @pinx.update(pinx_params)
        format.html { redirect_to @pinx, notice: 'Pinx was successfully updated.' }
        format.json { render :show, status: :ok, location: @pinx }
      else
        format.html { render :edit }
        format.json { render json: @pinx.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pinxes/1
  # DELETE /pinxes/1.json
  def destroy
    @pinx.destroy
    respond_to do |format|
      format.html { redirect_to pinxes_url, notice: 'Pinx was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pinx
      @pinx = Pinx.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pinx_params
      params.require(:pinx).permit(:description)
    end
end
