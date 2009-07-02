# To demo in irb:
# load 'spinner.rb' ; include Spinner ; spinner_demo
#
# To use, include this module in a class and then wrap something in with_spinner
# It has two params, both optional. See spinner_demo for usage examples.

module Spinner
  def with_spinner total=nil, message="Working...", &blk
    current=0
    shown=buildstr(message,current,total)
    printf(shown)

    spin=Proc.new do
      clear(shown)
      current+=1
      shown=buildstr(message,current,total)
      printf(shown)
    end

    yield spin

    clear(shown)
    printf(" "*shown.length)
    clear(shown)
  end

  def spinner_demo max=100
    with_spinner max do |spin|
      (1..max).each do |n|
        spin.call
        sleep 0.05
      end
    end

    with_spinner nil, "No percentage..." do |spin|
      (1..max).each do |n|
        spin.call
        sleep 0.05
      end
    end
    nil
  end

  private

  def clear str
    printf("\b"*str.length)
  end

  def buildstr message, current, total
    str="#{char(current)} #{message}"
    if total
      percent=(current*100.0/total)
      str+= sprintf(" %3.2f%%",percent)
    end
    str
  end

  def char n
    %w{/ - \\ |}[n%4]
  end
end
