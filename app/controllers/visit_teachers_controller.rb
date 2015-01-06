class VisitTeachersController < ApplicationController
  before_action :set_visit_teacher, only: [:show, :edit, :update, :destroy]

  # GET /visit_teachers
  # GET /visit_teachers.json
  def index
    @visit_teachers = VisitTeacher.all
  end

  # GET /visit_teachers/1
  # GET /visit_teachers/1.json
  def show
  end

  # GET /visit_teachers/new
  def new
    @visit_teacher = VisitTeacher.new
  end

  # GET /visit_teachers/1/edit
  def edit
  end

  # POST /visit_teachers
  # POST /visit_teachers.json
  def create
    @visit_teacher = VisitTeacher.new(visit_teacher_params)

    respond_to do |format|
      if @visit_teacher.save
        format.html { redirect_to @visit_teacher, notice: 'Visit teacher was successfully created.' }
        format.json { render :show, status: :created, location: @visit_teacher }
      else
        format.html { render :new }
        format.json { render json: @visit_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /visit_teachers/1
  # PATCH/PUT /visit_teachers/1.json
  def update
    respond_to do |format|
      if @visit_teacher.update(visit_teacher_params)
        format.html { redirect_to @visit_teacher, notice: 'Visit teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @visit_teacher }
      else
        format.html { render :edit }
        format.json { render json: @visit_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /visit_teachers/1
  # DELETE /visit_teachers/1.json
  def destroy
    @visit_teacher.destroy
    respond_to do |format|
      format.html { redirect_to visit_teachers_url, notice: 'Visit teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_visit_teacher
      @visit_teacher = VisitTeacher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def visit_teacher_params
      params.require(:visit_teacher).permit(:visit_id, :teacher_id)
    end
end
