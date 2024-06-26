require "application_system_test_case"

class FilmesTest < ApplicationSystemTestCase
  setup do
    @filme = filmes(:one)
  end

  test "visiting the index" do
    visit filmes_url
    assert_selector "h1", text: "Filmes"
  end

  test "should create filme" do
    visit filmes_url
    click_on "New filme"

    fill_in "Autor", with: @filme.Autor
    fill_in "Descricao", with: @filme.Descricao
    fill_in "Nota", with: @filme.Nota
    fill_in "Titulo", with: @filme.Titulo
    fill_in "Text", with: @filme.text
    click_on "Create Filme"

    assert_text "Filme was successfully created"
    click_on "Back"
  end

  test "should update Filme" do
    visit filme_url(@filme)
    click_on "Edit this filme", match: :first

    fill_in "Autor", with: @filme.Autor
    fill_in "Descricao", with: @filme.Descricao
    fill_in "Nota", with: @filme.Nota
    fill_in "Titulo", with: @filme.Titulo
    fill_in "Text", with: @filme.text
    click_on "Update Filme"

    assert_text "Filme was successfully updated"
    click_on "Back"
  end

  test "should destroy Filme" do
    visit filme_url(@filme)
    click_on "Destroy this filme", match: :first

    assert_text "Filme was successfully destroyed"
  end
end
