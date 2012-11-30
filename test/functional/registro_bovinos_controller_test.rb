require 'test_helper'

class RegistroBovinosControllerTest < ActionController::TestCase
  setup do
    @registro_bovino = registro_bovinos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registro_bovinos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registro_bovino" do
    assert_difference('RegistroBovino.count') do
      post :create, registro_bovino: { alta_explotacion: @registro_bovino.alta_explotacion, baja_explotacion: @registro_bovino.baja_explotacion, balance_fecha: @registro_bovino.balance_fecha, balance_numero_cabezas: @registro_bovino.balance_numero_cabezas, causa_alta: @registro_bovino.causa_alta, causa_baja: @registro_bovino.causa_baja, comprador_codigo: @registro_bovino.comprador_codigo, comprador_nif: @registro_bovino.comprador_nif, comprador_nombre: @registro_bovino.comprador_nombre, crotal: @registro_bovino.crotal, crotal_madre: @registro_bovino.crotal_madre, id: @registro_bovino.id, nacimiento: @registro_bovino.nacimiento, raza: @registro_bovino.raza, sexo: @registro_bovino.sexo, traslado_numero: @registro_bovino.traslado_numero, traslado_serie: @registro_bovino.traslado_serie, vendedor_codigo: @registro_bovino.vendedor_codigo, vendedor_explotacion: @registro_bovino.vendedor_explotacion, vendedor_nif: @registro_bovino.vendedor_nif, vendedor_nombre: @registro_bovino.vendedor_nombre }
    end

    assert_redirected_to registro_bovino_path(assigns(:registro_bovino))
  end

  test "should show registro_bovino" do
    get :show, id: @registro_bovino
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registro_bovino
    assert_response :success
  end

  test "should update registro_bovino" do
    put :update, id: @registro_bovino, registro_bovino: { alta_explotacion: @registro_bovino.alta_explotacion, baja_explotacion: @registro_bovino.baja_explotacion, balance_fecha: @registro_bovino.balance_fecha, balance_numero_cabezas: @registro_bovino.balance_numero_cabezas, causa_alta: @registro_bovino.causa_alta, causa_baja: @registro_bovino.causa_baja, comprador_codigo: @registro_bovino.comprador_codigo, comprador_nif: @registro_bovino.comprador_nif, comprador_nombre: @registro_bovino.comprador_nombre, crotal: @registro_bovino.crotal, crotal_madre: @registro_bovino.crotal_madre, id: @registro_bovino.id, nacimiento: @registro_bovino.nacimiento, raza: @registro_bovino.raza, sexo: @registro_bovino.sexo, traslado_numero: @registro_bovino.traslado_numero, traslado_serie: @registro_bovino.traslado_serie, vendedor_codigo: @registro_bovino.vendedor_codigo, vendedor_explotacion: @registro_bovino.vendedor_explotacion, vendedor_nif: @registro_bovino.vendedor_nif, vendedor_nombre: @registro_bovino.vendedor_nombre }
    assert_redirected_to registro_bovino_path(assigns(:registro_bovino))
  end

  test "should destroy registro_bovino" do
    assert_difference('RegistroBovino.count', -1) do
      delete :destroy, id: @registro_bovino
    end

    assert_redirected_to registro_bovinos_path
  end
end
