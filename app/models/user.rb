class User < ActiveRecord::Base
  validates :email, uniqueness: true, on: :create
  has_many :projects
  has_secure_password :password

  def project_title
    projects.first&.title
  end

  def self.render_all_formatted_for_frontend
    self.all.map do |user|
      {
        id: user.id,
        name: user.name,
        email: user.email,
        project: user.project_id
      }
    end
  end

  def self.create_new_user_with_defaults(hash)
    name = hash["name"] || "New User"
    email = hash["email"] || "new@example.com"
    password = hash["password"] || "password"

    self.new(
      name: name,
      email: email,
      password: password,
      project: hash["project"],
      project_id: hash["project_id"]
    )
  end
end
