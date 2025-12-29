require "application_system_test_case"

class GInstituicaosTest < ApplicationSystemTestCase
  setup do
    @g_instituicao = g_instituicoes(:one)
  end

  test "visiting the index" do
    visit g_instituicoes_url
    assert_selector "h1", text: "G instituicaos"
  end

  test "should create g instituicao" do
    visit g_instituicoes_url
    click_on "New g instituicao"

    fill_in "Historico", with: @g_instituicao.historico
    fill_in "Nome", with: @g_instituicao.nome
    click_on "Create G instituicao"

    assert_text "G instituicao was successfully created"
    click_on "Back"
  end

  test "should update G instituicao" do
    visit g_instituicao_url(@g_instituicao)
    click_on "Edit this g instituicao", match: :first

    fill_in "Historico", with: @g_instituicao.historico
    fill_in "Nome", with: @g_instituicao.nome
    click_on "Update G instituicao"

    assert_text "G instituicao was successfully updated"
    click_on "Back"
  end

  test "should destroy G instituicao" do
    visit g_instituicao_url(@g_instituicao)
    click_on "Destroy this g instituicao", match: :first

    assert_text "G instituicao was successfully destroyed"
  end
end
