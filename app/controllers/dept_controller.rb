class DeptController < ApplicationController
before_filter :authenticate_user!, :except => [:show, :index]	
def index
end
def save
@view=Hod.new(params[:sav])	
if @view.save
redirect_to :action=>'showall'
else
	redirect_to :action=>'index'
end
end
def showall
	@show=Hod.all
end
def view
	@view=Hod.find(params[:id])
end
def edit
	@edit=Hod.find(params[:id])
end
def update
	@update=Hod.find(params[:id])
	@updates=@update.update_attributes(params[:hod])
	redirect_to :action=>'showall'
end
def delete
	@delete=Hod.find(params[:id])
	@delete.destroy
	redirect_to :action=>'showall'
end
end