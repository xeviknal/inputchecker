require "inputchecker/version"
require "active_model"

module Inputchecker
  class EmailValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
      record.errors.add(attribute, "wrong, wrong, wrong")
    end
  end
end

ActiveModel::Validations.send(:include, Inputchecker)
