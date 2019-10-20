class TestSurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy]	

  def index
    @surveys = TestSurvey.all  	
  end

  def new
  	@test_survey = TestSurvey.new
  end


  def edit
  end

  def create
    @test_survey = TestSurvey.new(test_survey_params)  
    if @test_survey.save
    	redirect_to test_surveys_path
    else
    	redirect_to new_test_survey_path
    end	
  end

  def show
  	@survey = TestSurvey.eager_load(:questions).find(params[:id])
  end


  def update
  	@test_survey.update(test_survey_params)
  	redirect_to test_surveys_path
  end

  def destroy
  	@test_survey.destroy
  	redirect_to test_surveys_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @test_survey = TestSurvey.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_survey_params
      params.require(:test_survey).permit(:name)
    end

end
