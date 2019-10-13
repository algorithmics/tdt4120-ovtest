function min_coins_greedy(coins, value)
    # din kode her
end

### Tester ###
# Disse testene blir kjørt når du kjører filen
# Du trenger ikke å endre noe her, men du kan eksperimentere!

printstyled("\n\n\n---------------\nKjører tester\n---------------\n"; color = :magenta)

using Test
@testset "Tester" begin
	@test min_coins_greedy([1000,500,100,20,5,1],1226) == 6
  @test min_coins_greedy([20,10,5,1],99) == 10
  @test min_coins_greedy([5,1],133) == 29
end

println("\nFungerte alt? Prøv å kjør koden i inginious!")
println("Husk at disse testene ikke alltid sjekker alle edge-cases")
println("---------------------------------------------------------\n\n")
