class EmailController < ApplicationController
  def index
  	@email = Email.all
  end

  def show
  	puts "****************************************************************"
  	puts params[:id]
  	@email = Email.find(params[:id])

    respond_to do |format|
      	#format.html { redirect_to email_path }
        format.js

    end
  end

  def destroy
  	puts "ishdpqiwjhdqzsk***************************************************"
  	puts params
  	@des = Email.find(params[:id])
    @des.destroy
    @email = Email.all
    respond_to do |format|
      	#format.html { redirect_to email_path }
        format.js

    end
  end
end
