class CreateDoubleEntryReportingTables < ActiveRecord::Migration<%= migration_version %>
  def self.up
    create_table "double_entry_line_aggregates", :force => true do |t|
      t.string     "function",   :limit => 15, :null => false
      t.string     "account",    :limit => 31, :null => false
      t.string     "code",       :limit => 47
      t.string     "scope",      :limit => 23
      t.integer    "year"
      t.integer    "month"
      t.integer    "week"
      t.integer    "day"
      t.integer    "hour"
      t.integer    "amount",                   :null => false
      t.string     "filter"
      t.string     "range_type", :limit => 15, :null => false
      t.timestamps                             :null => false
    end
    add_index "double_entry_line_aggregates", ["function", "account", "code", "year", "month", "week", "day"], :name => "line_aggregate_idx"
  end

  def self.down
    drop_table "double_entry_line_aggregates"
  end
end
