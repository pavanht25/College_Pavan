class RegnoController < ApplicationController
def index
	@index=Regno.new
	@fetch=Stud.find(params[:id])
end
def save
	@x=Stud.find(params[:id])
	#@p=@x.id
	@x=@x.create_regno(params[:sa])
	#@x=@x.regno.build(params[:sa])
@x.save
	#@p=Regno.new(params[:sa])
	#@p.save	#@p=@fetc.regno.create(params[:sa])
	#redirect_to :controller=>'student',:action=>'showall'
end
end
