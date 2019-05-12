class MinorsController < ApplicationController
  before_action :set_minor, only: [:show, :edit, :update, :destroy]

  # GET /minors
  # GET /minors.json
  def index
    @minors = Minor.all
  end

  # GET /minors/1
  # GET /minors/1.json
  def show
  end

  # GET /minors/new
  def new
    @minor = Minor.new
  end

  # GET /minors/1/edit
  def edit
  end

  # POST /minors
  # POST /minors.json
  def create
    @minor = Minor.new(minor_params)

    respond_to do |format|
      if @minor.save
        flash[:notice] = 'Minor was successfully created.'
        format.html { redirect_to action: "index" }
      else
        flash[:alert] = custom_error_message_rendering(@minor.errors)
        format.html { redirect_to action: "new" }
      end
    end
  end

  # PATCH/PUT /minors/1
  # PATCH/PUT /minors/1.json
  def update
    respond_to do |format|
      puts "-------------"
      puts "-------------"
      puts "-------------"
      puts minor_params
      puts "-------------"
      puts "-------------"
      puts "-------------"
      if @minor.update(minor_params)
        flash[:notice] = 'Minor was successfully updated.'
        format.html { redirect_to action: "index" }
      else
        flash[:alert] = custom_error_message_rendering(@minor.errors)
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /minors/1
  # DELETE /minors/1.json
  def destroy
    @minor.destroy
    respond_to do |format|
      format.html { redirect_to minors_url, notice: 'Minor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_minor
      @minor = Minor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def minor_params
      # params.require(:minor).permit(:name, :description, :enter_text, :exit_text, :major_id)
      params.require(:minor).permit(:name, :description, :enter_text, :exit_text, major_ids: [])
    end
end
