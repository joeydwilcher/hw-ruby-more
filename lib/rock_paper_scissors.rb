class RockPaperScissors

  @@strategies = ['R', 'S', 'P']

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    raise NoSuchStrategyError.new("Strategy must be one of R,P,S") unless @@strategies.include?(player1[1]) and @@strategies.include?(player2[1])
    case player1[1]
      when player2[1]
        return player1
      when 'R'
        return (player2[1] == 'S') ? player1 : player2
      when 'S'
        return (player2[1] == 'P') ? player1 : player2
      when 'P'
        return (player2[1] == 'R') ? player1 : player2
    end
  end

  def self.tournament_winner(tournament)
    return winner(tournament[0], tournament[1]) unless !tournament[0][0].respond_to?(:to_str)
    return winner(tournament_winner(tournament[0]), tournament_winner(tournament[1]))
  end

end
