class Cart < ActiveRecord::Base
  # has_many говорит Rails, что в корзине имеется множетсво связанных с ней товарных позиций. dependent: :destroy показывает, что существование товарной позиции зависит от сущестоввания корзины.
  has_many :line_items, dependent: :destroy
end
