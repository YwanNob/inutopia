class Kind < ApplicationRecord
has_many :input
  def to_s
    name
  end
end
