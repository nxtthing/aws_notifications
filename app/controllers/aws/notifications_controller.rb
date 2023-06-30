require "multi_json"

module Aws
  class NotificationsController < ::ActionController::Base
    skip_before_action :verify_authenticity_token

    def create
      id = request.headers[:X_AMZ_SNS_MESSAGE_ID]

      headers = request.headers.to_a.each_with_object({}) do |(k, v), acc|
        key = k.match(/^HTTP_(.+)$/).try(:[], 1)
        acc[key] = v if key
      end

      params = ::MultiJson.load(request.body)

      aws_notification = AwsRecords::Notification.new(id:, headers:, params:)

      if aws_notification.save
        render json: aws_notification, status: :created
      else
        render json: aws_notification.errors, status: :unprocessable_entity
      end
    end
  end
end
