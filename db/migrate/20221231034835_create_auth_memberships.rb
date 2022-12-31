class CreateAuthMemberships < ActiveRecord::Migration[7.0]
  def change
    create_table :auth_memberships do |t|
      t.references :auth, null: false, foreign_key: true
      t.references :auth_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
