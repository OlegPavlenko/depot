module CurrentCart
  extend ActiveSupport::Concern

  private
    # Метод set_cart присваивает значение корзины переменной экземпляра @cart
    def set_cart
      # Получаем :cart_id из объекта session с последующей попыткой обнаружения корзины, соответствующей данному идентификатору.
      @cart = Cart.find(session[:cart_id])
    # Если запись корзины не находится, то метод set_cart приступит к созданию нового объекта Cart, сохранит идентификатор созданной корзины в сессии, а затем вернет новую корзину.
    rescue ActiveRecord::RecordNotFound
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end
end
