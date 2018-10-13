require 'action_controller'
require 'generator_spec/test_case'
require 'generators/double_entry/reporting/install/install_generator'

RSpec.describe DoubleEntry::Reporting::Generators::InstallGenerator do
  include GeneratorSpec::TestCase

  destination File.expand_path('../../../../../../tmp/generators', __FILE__)

  before do
    prepare_destination
    run_generator
  end

  it 'generates the expected migrations' do
    expect(destination_root).to have_structure {
      directory 'db' do
        directory 'migrate' do
          migration 'create_double_entry_reporting_tables' do
            contains 'class CreateDoubleEntryReportingTables'
            contains 'create_table "double_entry_line_aggregates"'
          end
        end
      end
    }
  end
end
