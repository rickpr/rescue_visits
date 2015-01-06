class VisitPeopleController < ApplicationController
  before_action :set_visit_person, only: [:show, :edit, :update, :destroy]

  # GET /visit_people
  # GET /visit_people.json
  def index
    @visit_people = VisitPerson.all
  end

  # GET /visit_people/1
  # GET /visit_people/1.json
  def show
  end

  # GET /visit_people/new
  def new
    @visit_person = VisitPerson.new
  end

  # GET /visit_people/1/edit
  def edit
  end

  # POST /visit_people
  # POST /visit_people.json
  def create
    @visit_person = VisitPerson.new(visit_person_params)

    respond_to do |format|
      if @visit_person.save
        format.html { redirect_to @visit_person, notice: 'Visit person was successfully created.' }
        format.json { render :show, status: :created, location: @visit_person }
      else
        format.html { render :new }
        format.json { render json: @visit_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visit_people/1
  # PATCH/PUT /visit_people/1.json
  def update
    respond_to do |format|
      if @visit_person.update(visit_person_params)
        format.html { redirect_to @visit_person, notice: 'Visit person was successfully updated.' }
        format.json { render :show, status: :ok, location: @visit_person }
      else
        format.html { render :edit }
        format.json { render json: @visit_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visit_people/1
  # DELETE /visit_people/1.json
  def destroy
    @visit_person.destroy
    respond_to do |format|
      format.html { redirect_to visit_people_url, notice: 'Visit person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visit_person
      @visit_person = VisitPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visit_person_params
      params.require(:visit_person).permit(:visit_id, :person_id)
    end
end
