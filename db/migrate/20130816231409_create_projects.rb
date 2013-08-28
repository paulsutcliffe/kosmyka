class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :client
      t.date :launched
      t.string :areas
      t.string :tecnologies
      t.text :description
      t.string :url
      t.string :kind

      t.timestamps
    end
  end
end
