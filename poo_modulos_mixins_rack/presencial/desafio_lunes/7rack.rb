#config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
    [200, {'Content-Type => 'text/html'}, ['Lorem ipsum']]
  end
end
run MiPrimeraWebApp.new
