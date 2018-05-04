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

def thankyou
	@tag = Tag.find(2)
    @tagblogs = @tag.blogs
	render layout: "blog"
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

def bitcoincrashcourse
	@course = Course.new
	render layout: "emptylayout"
end

end