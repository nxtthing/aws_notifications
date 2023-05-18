class CreateAwsNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :aws_notifications, id: :uuid do |t|
      t.jsonb :headers, default: {}, null: false
      t.jsonb :params, default: {}, null: false

      t.timestamps null: false
    end
  end
end
