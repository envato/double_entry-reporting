# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [0.1.0] - Unreleased

### Added

- `DoubleEntry::Reporting` module extracted from the `double_entry` gem. Please see
  the [Double Entry changelog](https://github.com/envato/double_entry/blob/master/CHANGELOG.md)
  for changes prior to this release.

- Added support for Ruby 2.3, 2.4 and 2.5.

- Added support for Rails 5.0, 5.1 and 5.2

- Allow partner account to be specified for aggregates.

- Allow filtering aggregates by multiple metadata key/value pairs.

### Changed

- These methods now use keyword arguments. This is a breaking change.
  - `DoubleEntry::Reporting::aggregate`
  - `DoubleEntry::Reporting::aggregate_array`
  - `DoubleEntry::Reporting::Aggregate::new`
  - `DoubleEntry::Reporting::Aggregate::formatted_amount`
  - `DoubleEntry::Reporting::AggregateArray::new`
  - `DoubleEntry::Reporting::LineAggregateFilter::new`

- Replaced Machinist with Factory Bot in test suite.

- Changed the `double_entry_line_aggregates.amount` column to be of type `bigint`.
  Apply this change with the migration:

   ```ruby
   change_column :double_entry_line_aggregates, :amount, :bigint, null: false
   ```

- Changed the maximum length of the `account`, `code` and `scope` columns.
  Apply this change with the migration:

   ```ruby
   change_column :double_entry_line_aggregates, :account, :string, null: false
   change_column :double_entry_line_aggregates, :code,    :string, null: true
   change_column :double_entry_line_aggregates, :scope,   :string, null: true
   ```

### Removed

- Removed support for Ruby 1.9, 2.0, 2.1 and 2.2.

- Removed support for Rails 3.2, 4.0, and 4.1.

- Removed `DoubleEntry::Reporting.scopes_with_minimum_balance_for_account`
  method. This is now available on the `DoubleEntry::AccountBalance` class.

### Fixed

- Fixed Ruby warnings.

- Fixed problem of Rails version number not being set in migration template for apps using Rails 5 or higher.

[Unreleased]: https://github.com/envato/double_entry/compare/v0.1.0...HEAD
[0.1.0]: https://github.com/envato/double_entry-reporting/compare/double-entry-v1.0.0...v0.1.0
