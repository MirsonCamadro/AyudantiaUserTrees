class Treeweather < ApplicationRecord
  belongs_to :tree
  belongs_to :weather
end
