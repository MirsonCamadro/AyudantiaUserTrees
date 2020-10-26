class Post < ApplicationRecord
  belongs_to :posteable, polymorphic: true
end
