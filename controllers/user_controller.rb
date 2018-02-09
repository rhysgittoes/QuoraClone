get '/sign_up' do
		erb :"/sign_up"
	end

post '/sign_up' do 
		u1= User.new(user_name: params[:user_name], user_password: params[:user_password])
		u1.save 
		erb :"/home"
	end






get '/sign_in' do
		erb :"/sign_in"
	end

post '/sign_in' do 
		if 
			User.exists?(user_name: params[:user_name], user_password: params[:user_password])
		erb :"/TEST1234"

		else
		erb :"incorrect_signin"	
	end
end