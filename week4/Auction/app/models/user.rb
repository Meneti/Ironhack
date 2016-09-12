class User < ApplicationRecord
	validades :email, presence :true, uniqueness :true
	has_many :products
end
