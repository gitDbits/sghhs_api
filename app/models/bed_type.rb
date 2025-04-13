class BedType < ApplicationRecord
  audited only: [:name]
end
