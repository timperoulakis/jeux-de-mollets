require 'minitest/autorun'
require_relative 'longest_repeated_substring'

class LongestRepeatedSubstringTest < Minitest::Test
  def test_empty_string
    input = ""
    assert_equal '', LongestRepeatedSubstring.longest_repeated_substring(input)
  end

  def test_no_repeated_string
    input = "rien"
    assert_equal '', LongestRepeatedSubstring.longest_repeated_substring(input)
  end

  def test_banana_string
    input = "banana"
    assert_match( /na|an/, LongestRepeatedSubstring.longest_repeated_substring(input))
  end

  def test_middle_without_quote_string
    input = "alors, ça, ça s arrose car dans cette phrase on ne dit pas allo, meme si cela rase mais pourtant le test doit passer tant pis pour les arroseurs arroses"
    assert_equal( 's arrose', LongestRepeatedSubstring.longest_repeated_substring(input))
  end

  def test_middle_with_quote_string
    input = "alors, ça, ça s'arrose car dans cette phrase on ne dit pas allo, meme si cela rase mais pourtant le test doit passer tant pis pour les arroseurs arroses"
    assert_equal( 's arrose', LongestRepeatedSubstring.longest_repeated_substring(input))
  end

  def test_kitue_string
    input = <<~RUBY
      Qu'est-ce que le Lorem Ipsum?
    Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. 
    Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme 
    assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n'a pas fait que 
    survivre cinq siècles, mais s'est aussi adapté à la bureautique informatique, sans que son contenu n'en soit 
    modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages
     du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.

    Pourquoi l'utiliser?
    On sait depuis longtemps que travailler avec du texte lisible et contenant du sens est source de distractions, 
    et empêche de se concentrer sur la mise en page elle-même. L'avantage du Lorem Ipsum sur un texte générique 
    comme 'Du texte. Du texte. Du texte.' est qu'il possède une distribution de lettres plus ou moins normale, 
    et en tout cas comparable avec celle du français standard. De nombreuses suites logicielles de mise en page 
    ou éditeurs de sites Web ont fait du Lorem Ipsum leur faux texte par défaut, et une recherche pour 'Lorem Ipsum' 
    vous conduira vers de nombreux sites qui n'en sont encore qu'à leur phase de construction. Plusieurs versions 
    sont apparues avec le temps, parfois par accident, souvent intentionnellement (histoire d'y rajouter de petits 
    clins d'oeil, voire des phrases embarassantes).
    RUBY
    assert_equal( "\nLe Lorem Ipsum est ", LongestRepeatedSubstring.longest_repeated_substring(input))
  end


end