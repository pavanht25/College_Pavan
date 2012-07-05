class SubjectController < ApplicationController
def index
	
end

def save
@view=Subject.new(params[:sav])	
@view.save
redirect_to :action=>'showall'
end

def showall
	@show=Subject.all
end

end