# frozen_string_literal: true

class Role < ApplicationRecord
  has_many :user_roles, dependent: :destroy
  has_many :users, through: :user_roles

  validates :name, presence: true, uniqueness: true

  def self.admin
    find_by(name: 'admin')
  end

  def self.user
    find_by(name: 'user')
  end
end
