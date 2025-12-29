require "test_helper"

class GInstituicoesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @g_instituicao = g_instituicoes(:one)
  end

  test "should get index" do
    get g_instituicoes_url
    assert_response :success
  end

  test "should get new" do
    get new_g_instituicao_url
    assert_response :success
  end

  test "should create g_instituicao" do
    assert_difference("GInstituicao.count") do
      post g_instituicoes_url, params: { g_instituicao: { historico: @g_instituicao.historico, nome: @g_instituicao.nome } }
    end

    assert_redirected_to g_instituicao_url(GInstituicao.last)
  end

  test "should show g_instituicao" do
    get g_instituicao_url(@g_instituicao)
    assert_response :success
  end

  test "should get edit" do
    get edit_g_instituicao_url(@g_instituicao)
    assert_response :success
  end

  test "should update g_instituicao" do
    patch g_instituicao_url(@g_instituicao), params: { g_instituicao: { historico: @g_instituicao.historico, nome: @g_instituicao.nome } }
    assert_redirected_to g_instituicao_url(@g_instituicao)
  end

  test "should destroy g_instituicao" do
    assert_difference("GInstituicao.count", -1) do
      delete g_instituicao_url(@g_instituicao)
    end

    assert_redirected_to g_instituicoes_url
  end
end
