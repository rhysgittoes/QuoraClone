
class AddUpvotesToAnswers < ActiveRecord::Migration[5.0]
  def change
  	 add_column :answers, :upvotes, :integer, :default => 0
  end
end

