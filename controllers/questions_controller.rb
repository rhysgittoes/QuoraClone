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

# Question Deleter
	post '/questions/delete' do 
		@questionsdelete = Question.find(params[:id])
		# @questionsdelete.answers.destroy_all

		# @answersdelete =  Question. 
		@questionsdelete.destroy
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

# Question finder
get '/questions/:id' do
  @question = Question.find(params[:id])
  erb :"/questions/show"
end



























# # Answer questions
# 	get '/questions/answer' do
# 	  	@questionanswer = Question.find(params[:id])
# 		erb :"/questions/answer"
# 	end

# 	post '/questions/answer' do 
# 	 	@questionanswer = Answer.new(question_answer: params[:question_answer], question_id: params[:question_id])
# 		@questionanswer.save
# 		redirect "/questions"
# 	end



# # Upvote Answers

# 	post '/questions/upvote' do 
# 		@answer_upvote = Answer.find(params[:id])
# 		@answer_upvote.update(upvotes: @answer_upvote.upvotes+1)
# 		redirect "/questions"
# 		p @answer_upvote.upvotes
# 	end







