class Zoogle < ActiveRecord::Base
  def self.graveyard_locator(graveyard)
    {:latitude => 5, :longitude => 10}
  end
end
