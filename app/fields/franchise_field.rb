require "administrate/field/base"

class FranchiseField < Administrate::Field::Base
  def to_s
    data
  end
end
