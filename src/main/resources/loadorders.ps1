Get-Content ".\orders.json" | ForEach-Object {
    Invoke-RestMethod `
        -Uri "http://localhost:8080/transportationorders" `
        -Method Put `
        -Body $_ `
        -ContentType "application/json"
}