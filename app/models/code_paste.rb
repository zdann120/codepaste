class CodePaste < ApplicationRecord
  belongs_to :user
  before_create :set_token

  private

  def set_token
    self.token = ULID.generate
  end
end
