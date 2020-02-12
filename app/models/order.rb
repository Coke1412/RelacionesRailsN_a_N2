class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  def self.cart(user)
    where(payed: nil, user: user).includes(:product)
  end
end
