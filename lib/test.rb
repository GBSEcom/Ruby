load "firstdata.rb"

    fd = FirstData::Portal.new(
      api_key: "pG3wO316dzWA4SapZeME1Qmxc9N3Kokp",
      api_secret: "3AqcUwvjSeG5GRAw",
      app_id: "Enter App ID here"
    )

    sale = fd.transaction.sale({
        amount: {
          total: "13.25",
          currency: "COP"
        },
        payment_card: {
          number: "2223000048400011",
          expiry_date: "1222",
          security_code: '999'
        }
    })

    if sale.is_successful?
        puts "Transaction " + sale.ipg_transaction_id + " was successful!"
    else
        puts "Error processing transaction"
        puts "Message: " + sale.error.message
    end 