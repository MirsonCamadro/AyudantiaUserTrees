class Tree < ApplicationRecord
    has_many :contributions
    has_many :users, through: :contributions
    has_many :posts, as: :posteable
    has_many :treeweathers
    has_many :weathers, through: :treeweathers
    has_many_attached :images

    def getWeather
        self.weathers.pluck(:name).join(', ')
    end
end
