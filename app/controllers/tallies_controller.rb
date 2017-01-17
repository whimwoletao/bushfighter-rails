class TalliesController < ApplicationController
 before_action :set_tally, only: [:show, :edit, :update, :destroy]
 layout 'dashboard'
 before_action :set_group
  # GET /tallies
  # GET /tallies.json
  def index
    @tallies = Tally.all
    @boss = Tally.order("total DESC").first
  end

  # GET /tallies/1
  # GET /tallies/1.json
  def show
  end

  # GET /tallies/new
  def new
    @tally = Tally.new
  end

  # GET /tallies/1/edit
  def edit
  end

  # POST /tallies
  # POST /tallies.json
  def create
    @tally = Tally.new(tally_params)
    @tally.group_id = @group.id
    params[:total] = params[:body]

    respond_to do |format|
      if @tally.save
        format.html { redirect_to group_tallies_path, notice: 'Tally was successfully created.' }
        format.json { render :show, status: :created, location: @tally }
      else
        format.html { render :new }
        format.json { render json: @tally.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tallies/1
  # PATCH/PUT /tallies/1.json
  def update
    respond_to do |format|
      if @tally.update(tally_params)
        format.html { redirect_to group_tallies_path(group_id:@group.id), notice: 'Tally was successfully updated.' }
        format.json { render :show, status: :ok, location: @tally }
      else
        format.html { render :edit }
        format.json { render json: @tally.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tallies/1
  # DELETE /tallies/1.json
  def destroy
    @tally.destroy
    respond_to do |format|
      format.html { redirect_to group_tallies_url, notice: 'Tally was successfully destroyed.' }
      format.json { head :no_content }
    end
    render 'index'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tally
      @tally = Tally.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tally_params
      params.require(:tally).permit(:name, :head, :body, :total, :kills)
    end
    #  check if the company has permission to access the group
   def set_group
     @group = Group.last
    # $grou = @group.id
    # check if company has permission to view the group
    # if !(@group.company_id == @company.id)
    #   redirect_to company_path(@company.slug)
    # end
  end
end
