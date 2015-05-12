require 'securerandom'

class Datasource
  def get_mouse_info(id)
    ["Logitech", "Razr", "Microsoft"].sample
  end

  def get_mouse_price(id)
    SecureRandom.random_number(150)
  end

  def get_cpu_info(id)
    ["Core i2", "Atom", "Ultrasparc"].sample
  end

  def get_cpu_price(id)
    SecureRandom.random_number(150)
  end

  def get_keyboard_info(id)
    ["Logitech", "DAS Keyboard", "WASD Keyboard"].sample
  end

  def get_keyboard_price(id)
    SecureRandom.random_number(150)
  end
end
