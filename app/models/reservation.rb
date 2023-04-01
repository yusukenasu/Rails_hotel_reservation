class Reservation < ApplicationRecord
    belongs_to :room
    belongs_to :user

    validates :check_in, presence: true
    validate :in_out_check
    
    def in_out_check
        errors.add(:check_out, "チェックアウトの日付はチェックインより後の日付を設定して下さい。") unless
        self.check_in < self.check_out
    end
end
