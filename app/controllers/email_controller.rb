class EmailController < ApplicationController
  def index
  	@email = Email.all

  end

  def show
  	@email = Email.find(params[:id])
    respond_to do |format|
      	format.html { redirect_to email_path }
        format.js

    end
  end

  def destroy
  	@des = Email.find(params[:id])
    @des.destroy
    @email = Email.all
    respond_to do |format|
      	format.html { redirect_to email_path }
        format.js

    end
  end
end
