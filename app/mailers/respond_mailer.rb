class RespondMailer < ApplicationMailer
	default from: "CryptoRasta@cryptofuor.com"

  def crypt_message(crytosubscription)
  	@crytosubscription = crytosubscription
  	mail to: crytosubscription.email , subject: "[Cryptofuor.com] What if you had an unfair Technological Advantage ?"
  end

  def crypt_message2(crytosubscription)
  	@crytosubscription = crytosubscription
  	mail to: crytosubscription.email , subject: "[Cryptofuor.com] Be a Value Crypto Investor..."
  end

  def crypt_message3(crytosubscription)
  	@crytosubscription = crytosubscription
  	mail to: crytosubscription.email , subject: "[Cryptofuor.com] Buy Low, Sell High!"
  end

  def crypt_message4(crytosubscription)
  	@crytosubscription = crytosubscription
  	mail to: crytosubscription.email , subject: "[Cryptofuor.com] Long live the King? I doubt!"
  end

end
