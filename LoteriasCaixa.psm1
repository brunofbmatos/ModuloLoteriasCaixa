function Get-DiaDeSorte {
    param (
        [Parameter(Mandatory=$true)][int]$numTickets,
        [Parameter(Mandatory=$true)][int]$numDezenas
    )
    
    $Dezenas = 1..31
    $Mes = 'Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'
    
    1..$numTickets | ForEach-Object {
        $numeros = ($Dezenas | Get-Random -Count $numDezenas | Sort-Object) -join ','
        $mes = $Mes | Get-Random -Count 1
        "$numeros $mes"
    }
}

function Get-DuplaSena {
    param (
        [Parameter(Mandatory=$true)][int]$numTickets, 
        [Parameter(Mandatory=$true)][int]$numDezenas)
	$Dezenas =  1..50;  
    1..$numTickets |ForEach-Object {($Dezenas | Get-Random -Count $numDezenas | Sort-Object) -join ',' }
}

function Get-LotoFacil {
    param (
        [Parameter(Mandatory=$true)][int]$numTickets, 
        [Parameter(Mandatory=$true)][int]$numDezenas)
	$Dezenas = 1..25;
    1..$numTickets |ForEach-Object {($Dezenas | Get-Random -Count $numDezenas| Sort-Object) -join ',' }
}

function Get-Lotomania {
    param (
        [Parameter(Mandatory=$true)][int]$numTickets, 
        [Parameter(Mandatory=$true)][int]$numDezenas)
	$Dezenas =  0..99;  
    1..$numTickets |ForEach-Object {($Dezenas | Get-Random -Count $numDezenas | Sort-Object) -join ',' }
}
function Get-MegaSena {
    param (
        [Parameter(Mandatory=$true)][int]$numTickets, 
        [Parameter(Mandatory=$true)][int]$numDezenas)
	$Dezenas =  1..60;  
    1..$numTickets |ForEach-Object {($Dezenas | Get-Random -Count $numDezenas | Sort-Object) -join ',' }
}

function Get-Milionaria {
    param (
        [Parameter(Mandatory=$true)][int]$numTickets, 
        [Parameter(Mandatory=$true)][int]$numDezenas,
        [Parameter(Mandatory=$true)][int]$numTrevos)
	$Dezenas =  1..50; 
	$Trevos = 1..6;  
    1..$numTickets |ForEach-Object {($Dezenas | Get-Random -Count $numDezenas | Sort-Object) + ' ; ' + ($Trevos| Get-Random -Count $numTrevos | Sort-Object) -join ',' }
}

function Get-Quina {
    param (
        [Parameter(Mandatory=$true)][int]$numTickets, 
        [Parameter(Mandatory=$true)][int]$numDezenas)
	$Dezenas =  1..80; 
    1..$numTickets |ForEach-Object {($Dezenas | Get-Random -Count $numDezenas | Sort-Object) -join ',' }
}

function Get-SuperSete {
    param (
        [Parameter(Mandatory=$true)][int]$numTickets,
        [Parameter(Mandatory=$true)][int]$numDezenas
    )

    $numeros = 0..9
    1..$numTickets | ForEach-Object {
        -join (1..$numDezenas | ForEach-Object { $numeros | Get-Random })
    }
}