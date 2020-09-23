class Mood < ApplicationRecord
  belongs_to :message, optional: true
end
