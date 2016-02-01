json.array!(@paymentreceives) do |paymentreceife|
  json.extract! paymentreceife, :id, :clientname, :clientcom, :desc, :invoiceno, :invdate, :cbendamt, :chequen, :chqdet, :pocbendamt
  json.url paymentreceife_url(paymentreceife, format: :json)
end
