class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|

      # t.belongs to :user
      t.references :user, null: false, foreign_key: {name: 'user_on_jobs'}

      t.string :title, null:false
      t.string :description, null:false
      t.string :user_id, null:false
      t.integer :salaire_moyen
      t.string :company_name

      t.timestamps
    end
  end
end
