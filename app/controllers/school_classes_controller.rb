class SchoolClassesController < ApplicationController
    def new
        @school_class = SchoolClass.new
    end
    
    def create
    @school_class = SchoolClass.create(schoolclass_params)
    redirect_to school_class_path(@school_class)
    end

    def edit
        @school_class = SchoolClass.find_by(id:params[:id])
    end

    def update
        @school_class = SchoolClass.find_by(id:params[:id])
        @school_class.update(schoolclass_params)
        redirect_to school_class_path(@school_class)
    end

    def show
        @school_class = SchoolClass.find_by(id:params[:id])
    end

    private

    def schoolclass_params
        params.require(:school_class).permit(:title, :room_number)
    end
end