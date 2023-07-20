class Pasta < ApplicationRecord
  def self.pick_two_names(right_answer)
    bank = pluck(:name)
    bank.delete(right_answer)
    bank.sample(2)
  end

  def self.get_a_pasta
    all.sample
  end
end
