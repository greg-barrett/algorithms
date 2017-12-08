


c=[1, 4, 5, 7]
b=[2, 3, 6, 8]
def merge_sort(b,c)
  a=[]
  bin=0
  cin=0
  until b[bin] == nil || c[cin] == nil
    if b[bin] < c[cin]
      a << b[bin]
      bin+=1
    else
      a << c[cin]
      cin+=1
    end
  end
  if b[bin] == nil
    until c[cin]==nil
      a << c[cin]
      cin+=1
    end
  else
    until b[bin]==nil
      a << b[bin]
      bin+=1
    end
  end
  a
end

print merge_sort(b, c)
