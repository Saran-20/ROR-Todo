class User < ApplicationRecord
    def self.overdue
        all.where('due_date < ?', Date.today)
      end
      def self.duetoday
          all.where(due_date: Date.today)
      end
      def self.duelater
          all.where('due_date > ?', Date.today)
      end
      def self.completed
         where(completed: 1)
      end
end
