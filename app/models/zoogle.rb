class Zoogle < ActiveRecord::Base
  def self.graveyard_locator(graveyard)
    {:latitude => 2, :longitude => 10}
  end
end
