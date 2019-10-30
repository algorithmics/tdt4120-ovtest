### Du skal implementere denne funksjonen ###
function findanimalgroups(animals, k)
    # Husk at om du bruker noen av de tidligere funksjonene i øvingen, så må du inkludere dem også!
end

### Tester ###
# Disse testene blir kjørt når du kjører filen
# Du trenger ikke å endre noe her, men du kan eksperimentere!

mutable struct DisjointSetNode
    rank::Int
    p::DisjointSetNode
    DisjointSetNode() = (obj = new(0); obj.p = obj;)
end

printstyled("\n\n\n---------------\nKjører tester!!\n---------------\n"; color = :magenta)


using Test
@testset "Tester" begin
    @test sort([sort(x) for x in findanimalgroups([("Ugle", "CGGCACGT"), ("Elg", "ATTTGACA"), ("Hjort", "AATAGGCC")], 2)]) == sort([["Ugle"], ["Elg", "Hjort"]])

    @test sort([sort(x) for x in findanimalgroups([("Hval", "CGCACATA"), ("Ulv", "AGAAACCT"), ("Delfin", "GGCACATA"), ("Hund", "GGAGACAA"), 
    ("Katt", "TAACGCCA"), ("Leopard", "TAACGCCT")], 3)]) == sort([["Hund", "Ulv"], ["Delfin", "Hval"], ["Katt", "Leopard"]])
end

println("\nFungerte det? Prøv å kjør koden i inginious!")
println("Husk at disse testene ikke sjekker alle grensetilfellene")
println("---------------------------------------------------------\n\n")