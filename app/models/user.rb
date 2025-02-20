class User < ApplicationRecord
  has_many :inputs

  def to_s
    pseudonym
  end
end
