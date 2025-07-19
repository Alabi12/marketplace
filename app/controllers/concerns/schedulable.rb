# app/models/concerns/schedulable.rb
module Schedulable
  extend ActiveSupport::Concern

  included do
    has_many :appointments, as: :serviceable
  end

  def available_slots(start_date, end_date)
    # Implement availability logic
  end
end