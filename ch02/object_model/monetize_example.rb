require 'forwardable'
require 'monetize'

bargain_price = Monetize.from_numeric(99, 'USD')
bargain_price.format

standard_price = 100.to_money('USD')
standard_price.format