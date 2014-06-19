class GolfCoursesController < ApplicationController
  before_action :set_golf_course, only: [:show, :edit, :update, :destroy]

  def import
    GolfCourse.import(params[:file])
    redirect_to golf_courses_url
  end
  # GET /golf_courses
  # GET /golf_courses.json
  def index
    @golf_courses = GolfCourse.all

    respond_to do |format|
      format.html
    end
  end

  # GET /golf_courses/1
  # GET /golf_courses/1.json
  def show
  end

  # GET /golf_courses/new
  def new
    @golf_course = GolfCourse.new
  end

  # GET /golf_courses/1/edit
  def edit
  end

  # POST /golf_courses
  # POST /golf_courses.json
  def create
    @golf_course = GolfCourse.new(golf_course_params)

    respond_to do |format|
      if @golf_course.save
        format.html { redirect_to @golf_course, notice: 'Golf course was successfully created.' }
        format.json { render action: 'show', status: :created, location: @golf_course }
      else
        format.html { render action: 'new' }
        format.json { render json: @golf_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /golf_courses/1
  # PATCH/PUT /golf_courses/1.json
  def update
    respond_to do |format|
      if @golf_course.update(golf_course_params)
        format.html { redirect_to @golf_course, notice: 'Golf course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @golf_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /golf_courses/1
  # DELETE /golf_courses/1.json
  def destroy
    @golf_course.destroy
    respond_to do |format|
      format.html { redirect_to golf_courses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_golf_course
      @golf_course = GolfCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def golf_course_params
      params.require(:golf_course).permit(:facility_id, :name, :address, :city, :state)
    end
end
