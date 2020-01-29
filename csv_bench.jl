using Base.Threads
@show Threads.nthreads()

using CSV, BenchmarkTools

@btime CSV.read("csv-benchmarks/mixed.csv", threaded = true)
