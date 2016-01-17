require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "product attributs must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test "product price must be positive"do
    product = Product.new(
                         title: "Book title",
                         description: "Description",
                         image_url: "image.jpg"
    )

    product.price= -1
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]

    product.price= 0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"], product.errors[:price]

    product.price= 1
    assert product.valid?
  end

  test "image url"do
    ok = %w{fred.gif fred.jpg fred.png}
    bad = %w{fred.doc fred.gif/more}

    ok.each do |name|
      assert new_product(name).valid?, "#{name} shouldn`t be invalid`"
    end
  end

  def new_product(image_url)
    Product.new(
               title: "Title",
               description: "Description",
               price: 13.99,
               image_url: image_url
    )
  end
end
