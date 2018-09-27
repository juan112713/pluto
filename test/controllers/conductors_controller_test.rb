require 'test_helper'

class ConductorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conductor = conductors(:one)
  end

  test "should get index" do
    get conductors_url
    assert_response :success
  end

  test "should get new" do
    get new_conductor_url
    assert_response :success
  end

  test "should create conductor" do
    assert_difference('Conductor.count') do
      post conductors_url, params: { conductor: { apellido: @conductor.apellido, estado: @conductor.estado, nombre: @conductor.nombre, num_doc_identidad: @conductor.num_doc_identidad, tipo_doc_identidad: @conductor.tipo_doc_identidad } }
    end

    assert_redirected_to conductor_url(Conductor.last)
  end

  test "should show conductor" do
    get conductor_url(@conductor)
    assert_response :success
  end

  test "should get edit" do
    get edit_conductor_url(@conductor)
    assert_response :success
  end

  test "should update conductor" do
    patch conductor_url(@conductor), params: { conductor: { apellido: @conductor.apellido, estado: @conductor.estado, nombre: @conductor.nombre, num_doc_identidad: @conductor.num_doc_identidad, tipo_doc_identidad: @conductor.tipo_doc_identidad } }
    assert_redirected_to conductor_url(@conductor)
  end

  test "should destroy conductor" do
    assert_difference('Conductor.count', -1) do
      delete conductor_url(@conductor)
    end

    assert_redirected_to conductors_url
  end
end
