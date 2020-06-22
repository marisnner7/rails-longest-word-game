class GamesController < ApplicationController
  #define a array with vowels
  VOWELS = %w( A E I O U Y)
  def new
    #chamar 5 letras de vogal aleatorias
    @letters = Array.new(5) { VOWELS.sample }
    #chamar 5 letras de a..z de forma aleatoria - vowels
    @letters += Array.new(5) { (('A'..'Z').to_a - VOWELS).sample }
    #embaralhar!
    @letters.shuffle!
  end

  def score
    @attempt = params[:word]
  end
end
