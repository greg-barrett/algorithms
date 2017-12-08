

def merg_sort(ary1, ary2, merged)
  return merged + ary1 if ary2[0]==nil
  return merged + ary2 if ary1[0]==nil
    if ary1[0]<ary2[0]
      merged<< ary1[0]
      merg_sort(ary1[1..-1],ary2, merged)
    else
      merged<< ary2[0]
      merg_sort(ary1, ary2[1..-1], merged)
    end
end

print merg_sort([ 2, 3, 4, 6, 11], [0, 1, 1, 5, 7, 9], [])

def merg_splitter(ary1)
  if ary1.length<2
    if ary1[0]<ary1[-1]
       return ary1
    else
      ary1<<ary1[0]
      ary1.delete_at(0)
      return ary1
    end
  else
    a= merg_splitter(ary1.slice!(0..ary1.length/2-1))
    b= merg_splitter(ary1)
  end
  merg_sort(a, b, [])
end

print merg_splitter([11, 12, 300, 3, 67, 4, 5, 5, 7, 87])
