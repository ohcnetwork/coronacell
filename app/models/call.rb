# frozen_string_literal: true

class Call < ApplicationRecord
  belongs_to :contact
  belongs_to :user
end
