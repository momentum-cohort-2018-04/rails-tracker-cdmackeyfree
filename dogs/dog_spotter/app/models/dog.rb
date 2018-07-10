class Dog < ApplicationRecord
    has_many :notes, dependent: :destroy
end
