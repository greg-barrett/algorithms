def sum(num)
return 1 if num==1
return num + sum(num-1)
end
#puts sum(5)

def r_append(ary, num)
  return ary if num < 0
  r_append(ary, num-1)
  ary<<num
end

#print r_append([], 5)

def append(ary, num)
  return ary if num < 0
  ary<<num
  append(ary, num-1)
end

#print append([], 5)
#puts ""
def fib(num)
  return 0 if num ==0
  return 1 if num ==1
  fib(num-1)+fib(num-2)
end

#puts fib(3)

def factorial(n)
  return 1 if n ==1
  n*factorial(n-1)
end

#puts factorial(3)

def palindrome?(string)
  if string.length ==1 || string.length ==0
    true
  else
    if string[0]==string[-1]
      palindrome?(string[1..-2])
    else
      false
    end
  end
end

#puts palindrome?("hannah")

def bottles(n)
  return print "No more bottles of beer on the wall" if n==0
  puts "There are #{n}, bottles of beer on the wall"
  bottles(n-1)
end

#bottles(5)

def fib_sec(ary,n)
  ary=[0, 1]
  n-=1
     n.times do
     ary<< ary[-1] + ary[-2]
  end
  ary
end
#print fib_sec([],5)

def fib_rec(ary, n)
  if ary==[]
    ary=[0, 1]
  end
  return ary if n==1
  ary<<ary[-1]+ ary[-2]
  fib_rec(ary,n-1)
end

#print fib_rec([], 5)

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

#print merg_sort([ 2, 3, 4, 6, 11], [0, 1, 1, 5, 7, 9], [])
