class LineItem < ActiveRecord::Base
  # belongs_to сообщает Rails, что строки в таблице товарный позиций являются дочерними по отношению к строкам в таблицах корзин и товаров.
  belongs_to :product
  belongs_to :cart
end
