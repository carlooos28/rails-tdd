require 'test_helper'

class ControlsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  def setup 
    @user = controls(:one)
  end

  test "should get" do
    # Verifica: 
      # Ruta
      # Controlador
      # metodo index
      # verifica vista 
    get controls_path
    assert_response :success
    assert_select "title", "Modulo Controles"
  end    
end
