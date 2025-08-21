if ARGV.length == 1
    $sleep_time = ARGV[0].to_i
else
    $sleep_time = 0.5
end

class A
  def aaa()
      sleep($sleep_time)
  end
end

class B
  class Ab
    def bbb()
        A::new.aaa()
    end
  end
end

class C
  class Cb
    def ccc()
        B::Ab.new.bbb()
    end
  end
end

def looper
  loop do
      C::Cb.new.ccc()
  end
end

looper
