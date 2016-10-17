require 'rails_helper'

RSpec.describe Product, type: :model do

  describe "Validations" do

    before do
      @category = Category.create(
        name: "Furniture"

        )
      @product = Product.create(
        name: "Duck",
        price: 2,
        quantity: 24,
        category: @category
      )
    end

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:price) }
    it { is_expected.to validate_presence_of(:quantity) }
    it { is_expected.to validate_presence_of(:category) }

  end
end
