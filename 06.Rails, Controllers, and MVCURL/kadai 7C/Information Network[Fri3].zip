class SayController < ApplicationController
  def hello
      @time = Time.now
  end

  def goodbye
    
    if params[:count] == nil || params[:count].to_i <= 0
      @count = 10
   

    else
      @count = params[:count]
    end
  end
end

