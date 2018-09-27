require 'test_helper'

class ParaderosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paradero = paraderos(:one)
  end

  test "should get index" do
    get paraderos_url
    assert_response :success
  end

  test "should get new" do
    get new_paradero_url
    assert_response :success
  end

  test "should create paradero" do
    assert_difference('Paradero.count') do
      post paraderos_url, params: { paradero: { nombre_p: @paradero.nombre_p, tipo_p: @paradero.tipo_p, ubicacion_p: @paradero.ubicacion_p } }
    end

    assert_redirected_to paradero_url(Paradero.last)
  end

  test "should show paradero" do
    get paradero_url(@paradero)
    assert_response :success
  end

  test "should get edit" do
    get edit_paradero_url(@paradero)
    assert_response :success
  end

  test "should update paradero" do
    patch paradero_url(@paradero), params: { paradero: { nombre_p: @paradero.nombre_p, tipo_p: @paradero.tipo_p, ubicacion_p: @paradero.ubicacion_p } }
    assert_redirected_to paradero_url(@paradero)
  end

  test "should destroy paradero" do
    assert_difference('Paradero.count', -1) do
      delete paradero_url(@paradero)
    end

    assert_redirected_to paraderos_url
  end
end
