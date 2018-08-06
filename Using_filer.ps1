foreach ( $user in Get-Content C:\hosts.txt) {
    Get-ADUser -Filter { employeenumber -like $user } -properties * | select employeenumber,samaccountname | Export-Csv -Append -Force C:\users_details.csv
    }