package main
import "fmt"

type BankAccount struct {
  holder string
  balance int
}

func (test *BankAccount) withdraw(amount int) {
 if *test.balance < amount {
  return
 }
*test.balance =  *test.balance - amount

return test.balance
}

func main() {
  acc := BankAccount{"James Smith", 100000}
  
  var amount int
  fmt.Scanln(&amount)
  
  fmt.Println(acc.withdraw(amount))
  fmt.Println(acc)
}