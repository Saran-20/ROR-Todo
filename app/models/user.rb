class User < ApplicationRecord
    def self.overdue
        where('due_date < ?', Date.today)
      end
      def self.duetoday
          where(due_date: Date.today)
      end
      def self.duelater
          where('due_date > ?', Date.today)
      end
      def self.completed
         where(completed: 1)
      end
end
