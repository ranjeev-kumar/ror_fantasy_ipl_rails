require "administrate/field/base"

class PlayerField < Administrate::Field::Base
  def to_s
    data
  end
end
