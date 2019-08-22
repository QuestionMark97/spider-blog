class User < ActiveRecord::Base
	has_many :articles, dependent: :destroy

	before_save {self.email = email.downcase}

	before_save {set_img self}

	validates :username, presence: true,
						uniqueness: {case_sensitive: false},
						length: {minimum: 3, maximum: 25}

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true,
						uniqueness: {case_sensitive: false},
						length: {maximum: 105},
						format: {with: VALID_EMAIL_REGEX} 

	has_secure_password

	private
	def set_img(obj)
		profile_colors = ['B', 'G', 'O', 'P', 'R', 'T', 'Y']
		if !User.any?
			profile_id = 'B0'
		else
			img_last = User.last.img.split('/')[3]
			if img_last[0] == 'Y'
				profile_color = 'B'
			else
				profile_color = profile_colors[profile_colors.index(img_last[0]) + 1]
			end
			if img_last[1] == '9'
				profile_num = '0'
			else
				profile_num = img_last[1].to_i + 1
			end
			profile_id = profile_color + profile_num.to_s
			end
		file_name = "spider_profiles/#{profile_id}.jpg"
		profile_url = ActionController::Base.helpers.asset_url(file_name)
		obj.img = profile_url
	end
end