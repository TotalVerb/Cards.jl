using Cards
using Test

@testset "char" begin
    @test Cards.char(Card(5, Suit(1))) == '🃅'
    @test Cards.char(Card(14, Suit(0))) == '🃑'
    @test Cards.char(Card(12, Suit(2))) == '🂽'
    for c in Cards.deck
        @test parse(Card, Cards.char(c)) == c
    end
end

@testset "parsing" begin
    @test parse(Card, "2H") == Card(2, Suit(2))
    @test parse(Card, "10S") == Card(10, Suit(3))
    @test parse(Card, "A♦") == Card(14, Suit(1))
end
