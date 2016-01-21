class Eratos

  public

  def initialize(number:0)
    @number = number
    @prime_list = []
  end

  def get_prime

    result_list = get_asc_list_of_number()

    if result_list.size > 0
      add_prime_to_list(asc_number_list:result_list)
    end

    puts @prime_list.join(", ")

    return @prime_list

  end


  private

  def get_asc_list_of_number

    if @number <= 1
      number_asc_list =  []
    else

      number_asc_list = Array.new

      (2..@number).each do |i|
        number_asc_list.push(i)
      end

    end

    return number_asc_list

  end

  def add_prime_to_list(asc_number_list:)

    prime_number = asc_number_list[0]

    if prime_number < Math.sqrt(@number) then

      @prime_list.push(prime_number) #要素を素数リストに追加

      ##処理している要素の倍数ではないものだけをリストに残す
      asc_number_list.select!{ |item| item % prime_number != 0 } #delete_ifは要素数が多くなると加速度的に遅くなる select!はかなり速い。

      add_prime_to_list(asc_number_list:asc_number_list)

    else

      @prime_list.concat(asc_number_list)

    end

  end

end

Eratos.new(number:ARGV[0].to_i).get_prime
