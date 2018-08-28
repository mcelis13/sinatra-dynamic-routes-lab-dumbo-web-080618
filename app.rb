require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @reversed = @name.reverse
  end

  get '/square/:number' do
     @num = params[:number]
     squared = @num.to_i * @num.to_i
     squared.to_s
  end

  get '/say/:number/:phrase' do
    string = ''
    @number = params[:number].to_i
    @phrase = params[:phrase]

    @number.times do
      string += "#{@phrase}"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
     @operation = params[:operation]
     @number1 = params[:number1].to_i
     @number2 = params[:number2].to_i

     if @operation == 'add'
       addition = @number1 + @number2
       "#{addition}"
     elsif @operation == 'subtract'
       subtraction = @number2 - @number1
       "#{subtraction}"
     elsif @operation == 'divide'
       division = @number1 / @number2
       "#{division}"
     elsif @operation == 'multiply'
       multiplication = @number1 * @number2
        "#{multiplication}"
     end
  end

end
