class CreateGInstituicoes < ActiveRecord::Migration[7.2]
  def up
    unless table_exists?(:g_instituicoes)
      create_table :g_instituicoes do |t|
      t.string :nome
      t.string :historico
      t.timestamps
      end
    end
  end

  def down
    drop_table :g_instituicoes if table_exists?(:g_instituicoes)
  end
end
