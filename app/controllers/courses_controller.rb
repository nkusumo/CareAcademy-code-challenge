class CoursesController < ApplicationController
    before_action :set_course, only: [:show, :update, :destroy]
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        courses = Course.all
        render json: courses
    end

    def show
        render json: @course
    end

    def create
        course = Course.create!(course_params)
        render json: course, status: :created
    end

    def update
        @course.update!(course_params)
        render json: @course
    end

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
