using StatsBase: sample, shuffle

const base = joinpath(homedir(), "chest/chest_xray/train/PNEUMONIA")

"""
  stub -> <one of the dirs>/<img path> - _im/cr.tif
"""
function load_img(stub::String; rsize = (256,256), display = true)
  im = joinpath(base, stub)
  x = Images.load(im)
  x = Images.imresize(x, rsize...)
  if display
    return x
  end
  x = channelview(x)
  x = reshape(x, rsize..., 1, 1)
  x
end

"""
  dir should have the whole path till the directory

  Returns a batch of `n` randomly sampled images
  and corresponding masks.
"""
function load_batch(;n = 20, rsize=(500,500))
  imgs = filter(x -> occursin("virus", x), readdir(base))
  imgs = sample(imgs, n)

  x = []
  for (i,im) in enumerate(imgs)
    im = Images.load(joinpath(base, im))
    im = Images.imresize(im, rsize...)
    im = channelview(im)
    if length(size(im)) > 2
      continue
    end
    
    push!(x, im)
  end
  x = cat(x..., dims = 3)
  x = reshape(x, (size(x)[1:2]..., 1, size(x, ndims(x))) )

  x, x
end
