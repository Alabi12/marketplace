class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         class User < ApplicationRecord

    enum role: {
      customer: 0,
      store_owner: 1,
      professional: 2,
      business_owner: 3,
      skilled_professional: 4,
      admin: 5
    }

    after_initialize :set_default_role, if: :new_record?

    private

      def set_default_role
        self.role ||= :customer
      end
    end
end
