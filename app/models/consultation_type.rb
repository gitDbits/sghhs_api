class ConsultationType < ApplicationRecord
  audited only: [:name]
end
