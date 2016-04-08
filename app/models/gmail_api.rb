require 'gmail'
include ActionView::Helpers::SanitizeHelper


class GmailAPI
  def initialize
    @gmail = Gmail.connect(ENV["email"], ENV["password"])
  end

  # Mail.defaults do
  #   retriever_method :pop3, :address    => "pop.gmail.com",
  #     :port       => 995,
  #     :user_name  => ENV['email'],
  #     :password   => ENV['password'],
  #     :enable_ssl => true
  # end

  def grab_all
    @email_objects = []
    @emails = @gmail.inbox.emails
    # @other = Mail.all
    # raise
    @emails.each do |email|
      begin
        # body = Premailer.new(email.html_part.try(:body).try(:decoded), with_html_string: true).to_inline_css
        body = email.text_part.body.raw_source
      rescue
        next
      end
      obj = {
        name: email.from[0].name,
        from: "#{email.from[0].mailbox}@#{email.from[0].host}",
        to: 'johnandkelseyscoolproject@gmail.com',
        subject: email.subject,
        body:  email.text_part.body.raw_source,
        received_date: email.date
      }
      @email_objects << obj
    end
    @email_objects
  end

end
