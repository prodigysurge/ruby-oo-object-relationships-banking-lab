class BankAccount

    attr_accessor :status, :balance
    attr_reader :name

    # @@balance = []

    def initialize(name, balance = 1000, status = "open")
        @name = name
        @balance = balance
        @status = status
        
    end

    def name
        @name
    end

    def balance
        @balance
    end

    def status
        @status
    end

    def deposit(deposit)
        self.balance += deposit
    end

    def display_balance
        "Your balance is $#{self.balance}."
    end

    def valid?
        status == "open" && balance > 0
    end

    def close_account
        self.status = "closed"
    end

end
