class AdventuresController < ApplicationController
    def index
        adventures = Adventure.all.to_json
        render json: adventures
    end

    # GET /adventures/1
  def show
    render json: @adventure
  end

  # POST /adventures
  def create
    @adventure = Adventure.new(adventure_params)

    if @adventure.save
      render json: @adventure, status: :created, location: @adventure
    else
      render json: @adventure.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /adventures/1
  def update
    if @adventure.update(adventure_params)
      render json: @adventure
    else
      render json: @adventure.errors, status: :unprocessable_entity
    end
  end

  # DELETE /adventures/1
  def destroy
    @adventure.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adventure
      @adventure = Adventure.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def adventure_params
      params.require(:adventure).permit(:title, :location)
    end
end
