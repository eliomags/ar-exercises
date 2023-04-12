class Store < ActiveRecord::Base
    # 1. Add the following code _directly_ inside the Store model (class): `has_many :employees`
    has_many :employees

    # 2. Add validations to two models to enforce the following business rules:
    # - Stores must always have a name that is a minimum of 3 characters
    validates :name, length: { minimum: 3 }
    # - Stores have an annual_revenue that is a number (integer) that must be 0 or more
    validates :annual_revenue, numericality: { greater_than_or_equal_to: 0 }
    # - BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a [custom validation method](http://guides.rubyonrails.org/active_record_validations.html#custom-methods) - **don't** use a `Validator` class)
    validate :must_carry_mens_or_womens_apparel
    
    def must_carry_mens_or_womens_apparel
      if mens_apparel == false && womens_apparel == false
        errors.add(:Base, "Stores must carry at least one of men's or women's apparel")
      end
    end


end
