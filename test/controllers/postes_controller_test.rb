require 'test_helper'

class PostesControllerTest < ActionController::TestCase
  setup do
    @poste = postes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poste" do
    assert_difference('Poste.count') do
      post :create, poste: { contenu: @poste.contenu, titre: @poste.titre }
    end

    assert_redirected_to poste_path(assigns(:poste))
  end

  test "should show poste" do
    get :show, id: @poste
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poste
    assert_response :success
  end

  test "should update poste" do
    patch :update, id: @poste, poste: { contenu: @poste.contenu, titre: @poste.titre }
    assert_redirected_to poste_path(assigns(:poste))
  end

  test "should destroy poste" do
    assert_difference('Poste.count', -1) do
      delete :destroy, id: @poste
    end

    assert_redirected_to postes_path
  end
end
