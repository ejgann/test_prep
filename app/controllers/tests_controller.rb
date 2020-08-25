class TestsController < ApplicationController
    
    def index
        # if params[:search] && !params[:search].empty? 
        # @tests = @tests.search(params[:search].downcase)
        if params[:search]
            @tests = Test.where('(name) ILIKE ?', "%#{params[:search]}%")
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
        params.require(:test).permit(:name, :date, :user_id, :search)
    end

end

