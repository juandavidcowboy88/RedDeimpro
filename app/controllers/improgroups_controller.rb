class ImprogroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_improgroup, only: [:show, :edit, :update, :destroy]

  # GET /improgroups
  # GET /improgroups.json
  def index
    @improgroups = Improgroup.all
  end

  # GET /improgroups/1
  # GET /improgroups/1.json
  def show
  end

  # GET /improgroups/new
  def new
    @improgroup = Improgroup.new
  end

  # GET /improgroups/1/edit
  def edit
  end

  # POST /improgroups
  # POST /improgroups.json
  def create
    @improgroup = Improgroup.new(improgroup_params)

    respond_to do |format|
      if @improgroup.save
        format.html { redirect_to @improgroup, notice: 'Improgroup was successfully created.' }
        format.json { render :show, status: :created, location: @improgroup }
      else
        format.html { render :new }
        format.json { render json: @improgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /improgroups/1
  # PATCH/PUT /improgroups/1.json
  def update
    respond_to do |format|
      if @improgroup.update(improgroup_params)
        format.html { redirect_to @improgroup, notice: 'Improgroup was successfully updated.' }
        format.json { render :show, status: :ok, location: @improgroup }
      else
        format.html { render :edit }
        format.json { render json: @improgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /improgroups/1
  # DELETE /improgroups/1.json
  def destroy
    @improgroup.destroy
    respond_to do |format|
      format.html { redirect_to improgroups_url, notice: 'Improgroup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_improgroup
      @improgroup = Improgroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def improgroup_params
      params.require(:improgroup).permit(:name_improgroups, :creation_year, :actors_improgroups, :image_improgroups)
    end
end
