class CoursesController < ApplicationController
    before_action :set_course, only: [:show, :update, :destroy]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    # Read the JSON data for all courses
    def index
        courses = Course.all
        render json: courses
    end

    # Read the JSON data for a specific course using an ID
    def show
        render json: @course
    end

    # Create a course with a name and release date
    def create
        course = Course.create!(course_params)
        render json: course, status: :created
    end

    # Update a specific course using an ID
    def update
        @course.update!(course_params)
        render json: @course
    end

    # Delete a specific course using an ID
    def destroy
        @course.destroy
        render json: {}
    end

    private

    def set_course
        @course = Course.find(params[:id])
    end

    def course_params
        params.permit(:name, :release_date)
    end

    def render_unprocessable_entity_response(exception)
        render json: { errors: exception.record.errors.full_messages }, status: :unprocessable_entity
    end

    def render_not_found_response
        render json: { error: "Course not found" }, status: :not_found
    end

end
