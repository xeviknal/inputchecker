require "inputchecker/version"
require "active_model"

module Inputchecker
  class EmailValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      record.errors.add(attribute, I18n.t("inputchecker.mail.wrong_format")) unless valid_email?(value)
    end

    private

    def valid_email?(value)
      /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i.match(value).present?
    end

  end
end

ActiveModel::Validations.send(:include, Inputchecker)
