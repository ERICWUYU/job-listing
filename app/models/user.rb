class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :jobs
  has_many :job_admin
  has_many :is_admin, :through => :job_admin, :source => :job

  def admin?
    is_admin
  end
end
