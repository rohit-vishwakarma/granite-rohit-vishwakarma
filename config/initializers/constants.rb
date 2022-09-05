# frozen_string_literal: true

module Constants
  is_sqlite_db = ActiveRecord::Base.connection_db_config.configuration_hash[:adapter] == "sqlite3"
  DB_REGEX_OPERATOR = is_sqlite_db ? "REGEXP" : "~*"
  DEFAULT_NOTIFICATION_DELIVERY_HOUR = 10

  def test_notification_delivery_hour_uses_default_value
    @user.save
    assert_equal @user.preference.notification_delivery_hour, Constants::DEFAULT_NOTIFICATION_DELIVERY_HOUR
  end
end
