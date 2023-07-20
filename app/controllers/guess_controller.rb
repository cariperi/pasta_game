class GuessController < ApplicationController

  def index
    @right = Pasta.get_a_pasta
    @wrong = get_wrong_answers(@right.name)
    @answers = @wrong.push(@right.name).shuffle
  end

  private

  def get_wrong_answers(right_answer)
    Pasta.pick_two_names(right_answer)
  end
end
