class User < ApplicationRecord

  has_many :appointments, inverse_of: :user, dependent: :destroy

end
