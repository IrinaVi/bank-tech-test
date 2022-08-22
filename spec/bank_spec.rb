require "bank"

RSpec.describe "Bank" do

    it "returns 1000 when a 1000 was deposited" do
        bank = Bank.new
        bank.deposit(1000, "10-01-2023")
        expect(bank.get_statement).to eq "date || credit || debit || balance\n10-01-2023 || 1000 ||   || 1000"
    end

    it "returns the correct statement when we add deposit twice" do
        bank = Bank.new
        bank.deposit(1000, "10-01-2023")
        bank.deposit(2000, "13-01-2023")
        expect(bank.get_statement).to eq "date || credit || debit || balance\n13-01-2023 || 2000 ||   || 3000\n10-01-2023 || 1000 ||   || 1000"
    end

    it "returns the correct statement when we deposit twice and withdraw once" do
        bank = Bank.new
        bank.deposit(1000, "10-01-2023")
        bank.deposit(2000, "13-01-2023")
        bank.withdraw(500, "14-01-2023")
        expect(bank.get_statement).to eq "date || credit || debit || balance\n14-01-2023 ||   || 500 || 2500\n13-01-2023 || 2000 ||   || 3000\n10-01-2023 || 1000 ||   || 1000"
    end
end