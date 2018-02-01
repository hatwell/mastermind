class ComboChecker

  def self.check(guess, solution)
    hints = []
    guess.each_with_index do |e, i|
      if e == solution[i]
        hints.push 'y'
      elsif solution.include? e
        hints.push 'm'
      end
    end
    hints
  end

end

