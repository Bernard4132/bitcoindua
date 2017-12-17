class StaticPagesController < ApplicationController

def home	
end

def aboutus
 render layout: "blog"	
end

def terms
	render layout: "blog"
end

def advertise
	@contact = Contact.new
	render layout: "blog"
end

def faq
end

def dashboard
	if signed_in?
	@allusers = User.all
	@allblogs = Blog.all
	@alltags = Tag.all 
	@allsubscriptions = Subscription.all
	render layout: "blog"
    end
end

end