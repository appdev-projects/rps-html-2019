class ApplicationController < ActionController::Base
  def play_rock
    computer_move = ["rock", "paper", "scissors"].sample

    if computer_move == "rock"
      outcome = "tied"
    elsif computer_move == "paper"
      outcome = "lost"
    elsif computer_move == "scissors"
      outcome = "won"
    end

    render({ :plain => "They played #{computer_move}. We #{outcome}!" })
  end

  def play_paper
    computer_move = ["rock", "paper", "scissors"].sample

    if computer_move == "rock"
      outcome = "won"
    elsif computer_move == "paper"
      outcome = "tied"
    elsif computer_move == "scissors"
      outcome = "lost"
    end

    render({ :plain => "They played #{computer_move}. We #{outcome}!" })
  end

  def play_scissors
    computer_move = ["rock", "paper", "scissors"].sample

    if computer_move == "rock"
      outcome = "lost"
    elsif computer_move == "paper"
      outcome = "won"
    elsif computer_move == "scissors"
      outcome = "tied"
    end

    render({ :plain => "They played #{computer_move}. We #{outcome}!" })
  end

  def homepage
    welcome = "Happy #{Date.today.strftime("%A")}!
 Rock beats Scissors, Paper beats Rock, Scissors beats Paper.
 Point your browser at /rock, /paper, or /scissors to play the game."

    render({ :plain => welcome })
  end
end
