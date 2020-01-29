import pandas
import timeit

def time_pandas():
    setup = "import pandas"
    print(timeit.timeit("pandas.read_csv('csv-benchmarks/mixed.csv')", setup=setup, number = 10))
