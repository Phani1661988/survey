class ResponsesController < ApplicationController
	def index
		@question = Question.eager_load(:responses).find(params[:id])
	end

	def new
		@question = Question.find(params[:id])
		@response = @question.responses.build
	end

	def create
		@question = Question.find(params[:id])
		@response = @question.responses.build(response_params)
		if @response.save
			redirect_to test_survey_path(@question.test_survey_id)
		end
	end

	def edit
	end

	def update
	end

	  def destroy
	  	@response = Response.find(params[:id])
	  	@response.destroy
	  	redirect_to test_surveys_path
	  end

	private

	def response_params
		params.require(:response).permit(:response)
	end	
end
