class StaticPagesController < ApplicationController

def home	
end

def aboutus	
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
	@allusers = User.all
	@allblogs = Blog.all
	@alltags = Tag.all 
	@allsubscriptions = Subscription.all
	render layout: "blog"
end

end