# frozen_string_literal: true

module RegistrationFormOverride
  extend ActiveSupport::Concern

  included do
    attribute :newsletter, :boolean, default: true
  end
end
