class BeaconsController < ApplicationController
  before_action :set_beacon, only: [:show, :edit, :update, :destroy]

  # GET /beacons
  # GET /beacons.json
  def index
    @beacons = Beacon.all
  end

  # GET /beacons/1
  # GET /beacons/1.json
  def show
  end

  # GET /beacons/new
  def new
    @beacon = Beacon.new
  end

  # GET /beacons/1/edit
  def edit
  end

  # POST /beacons
  # POST /beacons.json
  def create
    
    @beacon = Beacon.new(beacon_params)

    # @major = Major.create
    # @minor = Minor.create
    # @beacon.major_id = @major.id
    # @beacon.minor_id = @minor.id

    respond_to do |format|
      if @beacon.save

        @major = Major.create
        @minor = Minor.create
        # @beacon.major_id = @major.id
        # @beacon.minor_id = @minor.id
        @beacon.update({"major_id"=>@major.id, "minor_id"=>@minor.id})

        flash[:notice] = 'Beacon was successfully created.'
        format.html { redirect_to action: "index" }
      else
        flash[:alert] = custom_error_message_rendering(@beacon.errors)
        format.html { redirect_to action: "new" }
      end
    end

  end

  # PATCH/PUT /beacons/1
  # PATCH/PUT /beacons/1.json
  def update
    respond_to do |format|
      if @beacon.update(beacon_params)
        flash[:notice] = 'Beacon was successfully updated.'
        format.html { redirect_to action: "index" }
      else
        flash[:alert] = custom_error_message_rendering(@beacon.errors)
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /beacons/1
  # DELETE /beacons/1.json
  def destroy
    @beacon.destroy
    respond_to do |format|
      format.html { redirect_to beacons_url, notice: 'Beacon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beacon
      @beacon = Beacon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beacon_params
      # params.require(:beacon).permit(:major_name, :major_description, :minor_name, :minor_description, :enter_text, :exit_text, :major_id, :minor_id)
      params.require(:beacon).permit(:name, :description, :enter_text, :exit_text, :major_id, :minor_id, :account_id)
    end
end
