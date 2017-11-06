class CreateUserSubjects < ActiveRecord::Migration
  def change
    create_table :user_subjects do |t|
      t.belongs_to :user, index: true
      t.belongs_to :subject, index: true
      t.timestamps
    end
  end
end
