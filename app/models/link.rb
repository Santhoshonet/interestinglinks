class Link < ActiveRecord::Base
  validates_presence_of :link, :tag
  validates_uniqueness_of :link 
  #validates_format_of :link, :with => '/^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(([0-9]{1,5})?\/.*)?$/ix'
  #before_save :sendnotification

  protected
  def sendnotification
    #dont add this method, it takes few time to send, so the user page interactions breaks
    #User.find(:all, :conditions => "isnotificationsubscribed = true").each do |user|
    #  UserMailer.deliver_urlnotiication(self,user)
    #end
  end
end
