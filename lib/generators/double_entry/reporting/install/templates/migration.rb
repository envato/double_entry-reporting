class CreateDoubleEntryReportingTables < ActiveRecord::Migration<%= migration_version %>
  def self.up
    create_table "double_entry_line_aggregates", :force => true do |t|
      t.string     "function",   :limit => 15, :null => false
      t.string     "account",                  :null => false
      t.string     "code"
      t.string     "partner_account"
      t.string     "scope"
      t.integer    "year"
      t.integer    "month"
      t.integer    "week"
      t.integer    "day"
      t.integer    "hour"
      t.bigint     "amount",                   :null => false
      t.string     "filter"
      t.string     "range_type", :limit => 15, :null => false
      t.timestamps                             :null => false
    end
    add_index "double_entry_line_aggregates", ["function", "account", "code", "partner_account", "year", "month", "week", "day"], :name => "line_aggregate_idx"
  end

  def self.down
    drop_table "double_entry_line_aggregates"
  end
end
