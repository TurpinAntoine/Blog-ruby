class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|

      t.references :job, null: false, foreign_key: { name: 'comment_on_jobs' }
      t.references :user, null: false, foreign_key: { name: 'user_on_job' }

      t.string :comment, null: false, limit: 255
      t.string :user_name, null: false

      t.timestamps
    end
  end
end
