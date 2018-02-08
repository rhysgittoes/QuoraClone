get '/' do
 erb :"home"
end

# All questions
	get '/questions' do
		@questions = Question.all
		@questionanswer = Answer.all
		erb :"/questions/index"
	end

# new questions
	get '/questions/new' do
	  erb :"/questions/new"
	end

	post '/questions/new' do 
		q1= Question.new(question_name: params[:question_name], question_details: params[:question_details])
		q1.save 
		erb :"/questions/new"
	end

# Delete a question
	post '/questions/delete' do 
		@questionsdelete = Question.find(params[:id])
		@questionsdelete.delete
		erb :"/questions/delete"
	end



# Question Editor
	get '/questions/edit' do
	  	@questionedit = Question.find(params[:id])
		erb :"/questions/edit"
	end

	post '/questions/edit' do 
		@questionedit = Question.find(params[:id])
		@questionedit.update(question_name: params[:question_name], question_details: params[:question_details])
		redirect "/questions"
	end

# Answer questions
	get '/questions/answer' do
	  	@questionanswer = Question.find(params[:id])
		erb :"/questions/answer"
	end

	post '/questions/answer' do 
	 	@questionanswer = Answer.new(question_answer: params[:question_answer], question_id: params[:question_id])
		@questionanswer.save
		redirect "/questions"
	end







# Question finder
get '/questions/:id' do
  @question = Question.find(params[:id])
  erb :"/questions/show"
end













