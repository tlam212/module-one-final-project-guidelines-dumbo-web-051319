class CreateDiarys < ActiveRecord::Migration[5.0]
  def change
    create_table :diarys do |t|
      t.integer :user_id
      t.integer :fortune_id
    end 
  end
end
