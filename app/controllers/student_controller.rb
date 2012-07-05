class StudentController < ApplicationController
def index
	@post=Subject.all
	@index=Stud.new
	@fetch=Hod.find(params[:id])

end
def save
	@fetc=Hod.find(params[:id])
	@p=@fetc.studs.create(params[:sa])
	@post=Stud.find(1)

	#@view=Stud.new(params[:sa])	
#@view.save
	
	redirect_to :controller=>'student',:action=>'showall'

end

def showall
	@show=Stud.all
end
def view
	@view=Stud.find(params[:id])
end
def edit
	@edit=Stud.find(params[:id])
end
def update
	@update=Stud.find(params[:id])
	@updates=@update.update_attributes(params[:stud])
	redirect_to :action=>'showall'
end
def delete
	@delete=Stud.find(params[:id])
	@delete.destroy
	redirect_to :action=>'showall'
end

def display
	@dis=Hod.find(params[:id])
	@display = Stud.find(:all, :conditions => {:hod_id => params[:id]})
	
end 
end
