class QuestionsController < ApplicationController

	def index
	end

	def new
		@survey = TestSurvey.find(params[:id])
		@question = @survey.questions.build
	end

	def create
		@survey = TestSurvey.eager_load(:questions).find(params[:id])
		@question = @survey.questions.build(question_params)
		if @question.save
			redirect_to test_survey_path(@survey.id)
		end
	end

	def edit
		@question = Question.find(params[:id])
	end

	def update
		@question = Question.find(params[:id])
		@question.update(question_params)
		redirect_to test_survey_path(@question.test_survey_id)
	end

	  def destroy
	  	@question = Question.find(params[:id])
	  	@question.destroy
	  	redirect_to test_surveys_path
	  end

	private

	def question_params
		params.require(:question).permit(:comment)
	end

end
