using WikiText
@static if VERSION < v"0.7.0-DEV.2005"
    using Base.Test
else
    using Test
end

for corpus in [WikiText2v1(), WikiText103v1(),
               WikiText2RawV1(), WikiText103RawV1()]
    @test isfile(trainfile(corpus))
    @test isfile(validationfile(corpus))
    @test isfile(testfile(corpus))
end
corpus = WikiText2v1()
