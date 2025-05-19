# require "application_system_test_case"

# class QuestionsTest < ApplicationSystemTestCase
#   # test "visiting the index" do
#   #   visit questions_url
#   #
#   #   assert_selector "h1", text: "Questions"
#   # end
# end
# test/system/questions_test.rb

# require "application_system_test_case"

# class QuestionsTest < ApplicationSystemTestCase
#   test "visiting /ask renders the form" do
#     visit ask_url
#     assert_selector "p", text: "Ask your coach anything"
#   end
# end

# test/system/questions_test.rb
require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  # [...]

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    take_screenshot  # Prend une capture d'écran ici

    assert_text "I don't care, get dressed and go to work!"
  end

  test "On peut manger ?" do
    visit ask_url
    fill_in "question", with: "On peut manger ?"
    click_on "Ask"

    take_screenshot  # Prend une capture d'écran ici

    assert_text "Silly question, get dressed and go to work!"
  end

  test "I am going to work" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"

    take_screenshot  # Prend une capture d'écran ici

    assert_text "Great!"
  end
end
