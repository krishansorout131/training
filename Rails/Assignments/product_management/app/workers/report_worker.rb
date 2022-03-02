class ReportWorker
  
  include Sidekiq::Worker 
  sidekiq_options retry: false

  def perform(id)
    user = User.find_by(id: id)
    
    UserMailer.welcome_email(user).deliver
    puts "working very well"
  end  
  
  

end    