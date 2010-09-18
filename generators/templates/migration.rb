class CreateLogsterLogLines < ActiveRecord::Migration
  def self.up
    create_table :logster_log_lines do |t|
      t.string :path
      t.float :response_time

      t.timestamps
    end
  end

  def self.down
    drop_table :logster_log_lines
  end
end
