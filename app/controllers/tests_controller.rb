class TestsController < ApplicationController
    
    def index
        if params[:q] && !params[:q].empty? 
        @tests = @tests.search(params[:q].downcase)
        else
            @tests = current_user.tests.all
        end 
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
        params.require(:test).permit(:name, :date, :user_id)
    end

end

