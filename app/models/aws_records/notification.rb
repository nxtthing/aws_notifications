module AwsRecords
  def self.table_name_prefix
    "aws_"
  end

  class Notification < ::ActiveRecord::Base
  end
end

# == Schema Information
#
# Table name: aws_notifications
#
#  id         :uuid             not null, primary key
#  headers    :jsonb            not null
#  params     :jsonb            not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#г8
