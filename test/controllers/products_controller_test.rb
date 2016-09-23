require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get products_url
    assert_response :success
  end

  test "should get new" do
    get new_product_url
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post products_url, params: { product: { hangtag_binid: @product.hangtag_binid, licensexref: @product.licensexref, necklabel_binid: @product.necklabel_binid, orderdetail_id: @product.orderdetail_id, product_description: @product.product_description, product_name: @product.product_name, product_preview_url: @product.product_preview_url, product_print_image_url: @product.product_print_image_url, product_thumb_url: @product.product_thumb_url, styleident: @product.styleident, trim_codes: @product.trim_codes } }
    end

    assert_redirected_to product_url(Product.last)
  end

  test "should show product" do
    get product_url(@product)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_url(@product)
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { hangtag_binid: @product.hangtag_binid, licensexref: @product.licensexref, necklabel_binid: @product.necklabel_binid, orderdetail_id: @product.orderdetail_id, product_description: @product.product_description, product_name: @product.product_name, product_preview_url: @product.product_preview_url, product_print_image_url: @product.product_print_image_url, product_thumb_url: @product.product_thumb_url, styleident: @product.styleident, trim_codes: @product.trim_codes } }
    assert_redirected_to product_url(@product)
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete product_url(@product)
    end

    assert_redirected_to products_url
  end
end
