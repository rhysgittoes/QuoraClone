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



# Upvote Answers

	post '/questions/upvote' do 
		@answer_upvote = Answer.find(params[:id])
		@answer_upvote.update(upvotes: @answer_upvote.upvotes+1)
		redirect "/questions"
		p @answer_upvote.upvotes
	end

