
class CreateQuestions < ActiveRecord::Migration[5.0]

  def change
    create_table :questions do |t|
    	t.string :question_name
    	t.string :question_details
    end
  end
end




