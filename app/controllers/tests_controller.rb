class TestsController < ApplicationController

    def index
        @tests = Test.all
    end

    def new
        @test = Test.new
    end

    def create
        @test = current_user.tests.build(test_params)
        if @test.save
            redirect_to tests_path
        else
            render :new
        end
    end

    def show
        @test = Test.find_by(id: params[:id])
    end

    def edit
        @test = Test.find_by(id: params[:id])
    end

    def update
        @test = Test.find_by(id: params[:id])
        if @test.update(test_params)
            redirect_to test_path(@test)
        else
            render :edit
        end
    end

    def destroy
        @test = Test.find_by(id: params[:id])
        @test.destroy
        redirect_to tests_path
    end

    private

    def test_params
        params.require(:test).permit(:name)
    end
end
