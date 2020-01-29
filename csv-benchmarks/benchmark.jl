file = "/Users/jacobquinn/domo/files/r.csv" # 1K rows, mixed
df = CSV.read(file);
println("file = $file, size = $(size(df)), threaded = false"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=false);
println("file = $file, size = $(size(df)), thraded = true"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=true);

file = "/Users/jacobquinn/domo/files/randoms.csv" # 70K rows, mixed
df = CSV.read(file);
println("file = $file, size = $(size(df)), threaded = false"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=false);
println("file = $file, size = $(size(df)), thraded = true"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=true);

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/mixed.csv"
df = CSV.read(file);
println("file = $file, size = $(size(df)), threaded = false"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=false);
println("file = $file, size = $(size(df)), thraded = true"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=true);

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/uniform_int64.csv"
df = CSV.read(file);
println("file = $file, size = $(size(df)), threaded = false"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=false);
println("file = $file, size = $(size(df)), thraded = true"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=true);

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/uniform_float64.csv"
df = CSV.read(file);
println("file = $file, size = $(size(df)), threaded = false"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=false);
println("file = $file, size = $(size(df)), thraded = true"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=true);

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/uniform_stringcat.csv"
df = CSV.read(file);
println("file = $file, size = $(size(df)), threaded = false"); GC.gc(); GC.gc(); @time df = CSV.read(file, pool=false, threaded=false);
println("file = $file, size = $(size(df)), thraded = true"); GC.gc(); GC.gc(); @time df = CSV.read(file, pool=false, threaded=true);

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/uniform_string.csv"
df = CSV.read(file);
println("file = $file, size = $(size(df)), threaded = false"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=false);
println("file = $file, size = $(size(df)), thraded = true"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=true);

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/mixed.csv"
df = CSV.read(file);
println("file = $file, size = $(size(df)), threaded = false"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=false);
println("file = $file, size = $(size(df)), thraded = true"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=true);

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/uniform_int64.csv"
df = CSV.read(file);
println("file = $file, size = $(size(df)), threaded = false"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=false);
println("file = $file, size = $(size(df)), thraded = true"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=true);

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/uniform_float64.csv"
df = CSV.read(file);
println("file = $file, size = $(size(df)), threaded = false"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=false);
println("file = $file, size = $(size(df)), thraded = true"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=true);

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/uniform_stringcat.csv"
df = CSV.read(file);
println("file = $file, size = $(size(df)), threaded = false"); GC.gc(); GC.gc(); @time df = CSV.read(file, pool=false, threaded=false);
println("file = $file, size = $(size(df)), thraded = true"); GC.gc(); GC.gc(); @time df = CSV.read(file, pool=false, threaded=true);

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/uniform_string.csv"
df = CSV.read(file);
println("file = $file, size = $(size(df)), threaded = false"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=false);
println("file = $file, size = $(size(df)), thraded = true"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=true);

file = "/Users/jacobquinn/Downloads/wide.csv" # 20K columns, 1K rows
df = CSV.read(file);
println("file = $file, size = $(size(df)), threaded = false"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=false);
println("file = $file, size = $(size(df)), thraded = true"); GC.gc(); GC.gc(); @time df = CSV.read(file, threaded=true);

# R script
file = "/Users/jacobquinn/domo/files/r.csv"
df <- fread(file)
system.time(df <- fread(file, nThread=1))
system.time(df <- fread(file, nThread=8))

file = "/Users/jacobquinn/domo/files/randoms.csv"
df <- fread(file)
system.time(df <- fread(file, nThread=1))
system.time(df <- fread(file, nThread=8))

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/mixed.csv"
df <- fread(file)
system.time(df <- fread(file, nThread=1))
system.time(df <- fread(file, nThread=8))

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/uniform_int64.csv"
df <- fread(file)
system.time(df <- fread(file, nThread=1))
system.time(df <- fread(file, nThread=8))

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/uniform_float64.csv"
df <- fread(file)
system.time(df <- fread(file, nThread=1))
system.time(df <- fread(file, nThread=8))

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/uniform_stringcat.csv"
df <- fread(file)
system.time(df <- fread(file, nThread=1))
system.time(df <- fread(file, nThread=8))

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/uniform_string.csv"
df <- fread(file)
system.time(df <- fread(file, nThread=1))
system.time(df <- fread(file, nThread=8))

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/mixed.csv"
df <- fread(file)
system.time(df <- fread(file, nThread=1))
system.time(df <- fread(file, nThread=8))

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/uniform_int64.csv"
df <- fread(file)
system.time(df <- fread(file, nThread=1))
system.time(df <- fread(file, nThread=8))

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/uniform_float64.csv"
df <- fread(file)
system.time(df <- fread(file, nThread=1))
system.time(df <- fread(file, nThread=8))

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/uniform_stringcat.csv"
df <- fread(file)
system.time(df <- fread(file, nThread=1))
system.time(df <- fread(file, nThread=8))

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/uniform_string.csv"
df <- fread(file)
system.time(df <- fread(file, nThread=1))
system.time(df <- fread(file, nThread=8))

file = "/Users/jacobquinn/Downloads/wide.csv" # 20K columns, 1K rows
df <- fread(file)
system.time(df <- fread(file, nThread=1))
system.time(df <- fread(file, nThread=8))

# pandas
file = "/Users/jacobquinn/domo/files/r.csv" # 1K rows, mixed
df = Pandas.read_csv(file);
GC.gc(); GC.gc(); @time df = Pandas.read_csv(file);

file = "/Users/jacobquinn/domo/files/randoms.csv" # 70K rows, mixed
df = Pandas.read_csv(file);
GC.gc(); GC.gc(); @time df = Pandas.read_csv(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/mixed.csv"
df = Pandas.read_csv(file);
GC.gc(); GC.gc(); @time df = Pandas.read_csv(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/uniform_int64.csv"
df = Pandas.read_csv(file);
GC.gc(); GC.gc(); @time df = Pandas.read_csv(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/uniform_float64.csv"
df = Pandas.read_csv(file);
GC.gc(); GC.gc(); @time df = Pandas.read_csv(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/uniform_stringcat.csv"
df = Pandas.read_csv(file);
GC.gc(); GC.gc(); @time df = Pandas.read_csv(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/uniform_string.csv"
df = Pandas.read_csv(file);
GC.gc(); GC.gc(); @time df = Pandas.read_csv(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/mixed.csv"
df = Pandas.read_csv(file);
GC.gc(); GC.gc(); @time df = Pandas.read_csv(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/uniform_int64.csv"
df = Pandas.read_csv(file);
GC.gc(); GC.gc(); @time df = Pandas.read_csv(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/uniform_float64.csv"
df = Pandas.read_csv(file);
GC.gc(); GC.gc(); @time df = Pandas.read_csv(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/uniform_stringcat.csv"
df = Pandas.read_csv(file);
GC.gc(); GC.gc(); @time df = Pandas.read_csv(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/uniform_string.csv"
df = Pandas.read_csv(file);
GC.gc(); GC.gc(); @time df = Pandas.read_csv(file);

file = "/Users/jacobquinn/Downloads/wide.csv" # 20K columns, 1K rows
df = Pandas.read_csv(file);
GC.gc(); GC.gc(); @time df = Pandas.read_csv(file);

# TextParse.jl
file = "/Users/jacobquinn/domo/files/r.csv" # 1K rows, mixed
df = TextParse.csvread(file);
GC.gc(); GC.gc(); @time df = TextParse.csvread(file);

file = "/Users/jacobquinn/domo/files/randoms.csv" # 70K rows, mixed
df = TextParse.csvread(file);
GC.gc(); GC.gc(); @time df = TextParse.csvread(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/mixed.csv"
df = TextParse.csvread(file);
GC.gc(); GC.gc(); @time df = TextParse.csvread(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/uniform_int64.csv"
df = TextParse.csvread(file);
GC.gc(); GC.gc(); @time df = TextParse.csvread(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/uniform_float64.csv"
df = TextParse.csvread(file);
GC.gc(); GC.gc(); @time df = TextParse.csvread(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/uniform_stringcat.csv"
df = TextParse.csvread(file);
GC.gc(); GC.gc(); @time df = TextParse.csvread(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/uniform_string.csv"
df = TextParse.csvread(file);
GC.gc(); GC.gc(); @time df = TextParse.csvread(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/mixed.csv"
df = TextParse.csvread(file);
GC.gc(); GC.gc(); @time df = TextParse.csvread(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/uniform_int64.csv"
df = TextParse.csvread(file);
GC.gc(); GC.gc(); @time df = TextParse.csvread(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/uniform_float64.csv"
df = TextParse.csvread(file);
GC.gc(); GC.gc(); @time df = TextParse.csvread(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/uniform_stringcat.csv"
df = TextParse.csvread(file);
GC.gc(); GC.gc(); @time df = TextParse.csvread(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/uniform_string.csv"
df = TextParse.csvread(file);
GC.gc(); GC.gc(); @time df = TextParse.csvread(file);

file = "/Users/jacobquinn/Downloads/wide.csv" # 20K columns, 1K rows
df = TextParse.csvread(file);
GC.gc(); GC.gc(); @time df = TextParse.csvread(file);

# TableReader
file = "/Users/jacobquinn/domo/files/r.csv" # 1K rows, mixed
df = TableReader.readcsv(file);
GC.gc(); GC.gc(); @time df = TableReader.readcsv(file);

file = "/Users/jacobquinn/domo/files/randoms.csv" # 70K rows, mixed
df = TableReader.readcsv(file);
GC.gc(); GC.gc(); @time df = TableReader.readcsv(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/mixed.csv"
df = TableReader.readcsv(file);
GC.gc(); GC.gc(); @time df = TableReader.readcsv(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/uniform_int64.csv"
df = TableReader.readcsv(file);
GC.gc(); GC.gc(); @time df = TableReader.readcsv(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/uniform_float64.csv"
df = TableReader.readcsv(file);
GC.gc(); GC.gc(); @time df = TableReader.readcsv(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/uniform_stringcat.csv"
df = TableReader.readcsv(file);
GC.gc(); GC.gc(); @time df = TableReader.readcsv(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_1000000_cols_20_na_false/uniform_string.csv"
df = TableReader.readcsv(file);
GC.gc(); GC.gc(); @time df = TableReader.readcsv(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/mixed.csv"
df = TableReader.readcsv(file);
GC.gc(); GC.gc(); @time df = TableReader.readcsv(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/uniform_int64.csv"
df = TableReader.readcsv(file);
GC.gc(); GC.gc(); @time df = TableReader.readcsv(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/uniform_float64.csv"
df = TableReader.readcsv(file);
GC.gc(); GC.gc(); @time df = TableReader.readcsv(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/uniform_stringcat.csv"
df = TableReader.readcsv(file);
GC.gc(); GC.gc(); @time df = TableReader.readcsv(file);

file = "/Users/jacobquinn/csv-comparison/data/rows_10000_cols_200_na_true/uniform_string.csv"
df = TableReader.readcsv(file);
GC.gc(); GC.gc(); @time df = TableReader.readcsv(file);

file = "/Users/jacobquinn/Downloads/wide.csv" # 20K columns, 1K rows
df = TableReader.readcsv(file);
GC.gc(); GC.gc(); @time df = TableReader.readcsv(file);
