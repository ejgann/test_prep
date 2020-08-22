class TestsController < ApplicationController
    
    def index
        @tests = Test.search(params[:search])
    end

    def new
        @test = current_user.tests.new
    end

    def create
        @test = current_user.tests.build(test_params)
        if @test.save
            redirect_to tests_path
        else
            render :new
        end
    end

    private

    def test_params
        params.require(:test).permit(:name, :date, :user_id, :search)
    end

end

