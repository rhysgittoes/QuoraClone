get '/' do
 erb :"home"
end

get '/questions/new' do
  erb :"/questions/new"
end

post '/questions/new' do 
	q1= Question.new(question_name: params[:question_name], question_details: params[:question_details])
	q1.save 
	erb :"/questions/new"
end


get '/questions' do
	@questions = Question.all
	erb :"/questions/index"
end


post '/questions/delete' do 
	@questionsdelete = Question.find(params[:id])
	@questionsdelete.delete
	erb :"/questions/delete"
end




get '/questions/edit' do
  	@questionedit = Question.find(params[:id])
	erb :"/questions/edit"
end

post '/questions/edit' do 
	@questionedit = Question.find(params[:id])
	@questionedit.update(question_name: params[:question_name], question_details: params[:question_details])
	redirect "/questions"
end



get '/questions/:id' do
  @question = Question.find(params[:id])
  erb :"/questions/show"
end














# get '/questions/edit/:id' do
#   	@questionedit = Question.find(params[:id])
# 	erb :"/questions/edit"
# end

# post '/questions/edit/:id' do 
# 	@questionedit = Question.find(params[:id])
# 	@questionedit.update(question_name: params[:question_name], question_details: params[:question_details])
# 	erb :"/questions/edit"
# end


