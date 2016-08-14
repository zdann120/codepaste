class CodePaste < ApplicationRecord
  belongs_to :user
  has_secure_token
end
