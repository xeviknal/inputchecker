require "active_model"

module Inputchecker
  class IpValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      record.errors.add(attribute, I18n.t("inputchecker.ip.wrong_format")) unless valid_ip?(value)
    end

    private

    def valid_ip?(value)
      valid = false

      values = /(\d{1,3}){1}:(\d{1,3}){1}:(\d{1,3}){1}:(\d{1,3}){1}/.match(value)

      if values.present?
        valid = values.map { |value| is_value_valid?(value)}.inject(&:and)
      end

      valid
    end

  end
end
