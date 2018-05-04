class CourseMailer < ApplicationMailer
	default from: "Nathan@cryptofuor.com"

  def lesson_one(course)
  	@course = course
  	mail to: course.email , subject: "[Lesson 1 out of 7] What is Bitcoin and why Bitcoin at all."
  end

  def lesson_two(course)
  	@course = course
  	mail to: course.email , subject: "[Lesson 2 out of 7] Do you know why there are a lot of misconceptions about bitcoin? Know why .."
  end

  def lesson_three(course)
  	@course = course
  	mail to: course.email , subject: "[Lesson 3 out of 7] Heard about other crypto currencies. They are called Alt coins. Learn about them here.."
  end

  def lesson_four(course)
  	@course = course
  	mail to: course.email , subject: "[Lesson 4 out of 7] Why we believe in Bitcoin and some altcoins.."
  end

  def lesson_five(course)
  	@course = course
  	mail to: course.email , subject: "[Lesson 5 out of 7] Do your research before you make any investment in Bitcoin or some other Alt coins."
  end

  def lesson_six(course)
  	@course = course
  	mail to: course.email , subject: "[Lesson 6 out of 7] Don't get carried away, Bitcoin investment is all about the numbers."
  end

  def lesson_seven(course)
  	@course = course
  	mail to: course.email , subject: "[Lesson 7 out of 7] What are your next steps. Buy some Bitcoin!."
  end
end
