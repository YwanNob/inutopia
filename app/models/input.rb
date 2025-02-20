class Input < ApplicationRecord
  belongs_to :kind
  belongs_to :user

  def to_s
    data
  end
end
