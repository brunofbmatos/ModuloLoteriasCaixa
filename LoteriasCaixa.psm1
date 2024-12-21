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
        [Parameter(Mandatory=$true)][int]$numTicketss)
	$Dezenas =  0..99;  
    1..50 |ForEach-Object {($Dezenas | Get-Random -Count $numDezenas | Sort-Object) -join ',' }
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

function Get-ResultadoMegaSena {
    param (
        [Parameter(Mandatory=$false)][int]$concurso = 0
    )


    # Definindo a URL com base no número do sorteio
    if ($concurso -eq 0) {
        $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/megasena/"
    } else {
        $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/megasena/" + $concurso
    }

    try {
        # Fazendo a requisição para a API
        $response = Invoke-RestMethod -Uri $url -Method Get

        # Verificando se a resposta contém dados
        if ($response) {
            # Extraindo os dados desejados
            $concurso = $response.numero
            $tipojogo = $response.tipoJogo
            $dataApuracao = $response.dataApuracao
            $listaDezenas = $response.listaDezenas -join ", "
            $listaRateioPremio = $response.listaRateioPremio
            $acumulou = $response.acumulado 
            if($acumulou -eq 1){
              $acumulou = "sim"
            } else {
                $acumulou = "nao"
            }


            # Exibindo os dados
            Write-Output "Concurso: $concurso"
            Write-Output "Tipo Jogo: $tipojogo"
            Write-Output "Data de Apuração: $dataApuracao"
            Write-Output "Dezenas Sorteadas: $listaDezenas"
            Write-Output "Acumulou: $acumulou"
            Write-Output "Rateio de Prêmios:"
            $listaRateioPremio | ForEach-Object {
                Write-Output "Faixa: $($_.descricaoFaixa), Ganhadores: $($_.numeroDeGanhadores), Prêmio: R$ $($_.valorPremio)"
            }
        } else {
            Write-Output "Não foi possível obter os dados da API."
        }
    } catch {
        Write-Output "Erro ao acessar a API: $_"
    }
}

function Get-ResultadoLotoFacil {
    param (
        [Parameter(Mandatory=$false)][int]$concurso = 0
    )

    if ($concurso -eq 0) {
        $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/LotoFacil/"
    } else {
        $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/LotoFacil/" + $concurso
    }

    # Fazendo a requisição para a API
    $response = Invoke-RestMethod -Uri $url -Method Get

    # Verificando se a resposta contém dados
    if ($response) {
        # Extraindo os dados desejados
        $concurso = $response.numero
        $tipojogo = $response.tipoJogo
        $dataApuracao = $response.dataApuracao
        $listaDezenas = $response.listaDezenas -join ", "
        $listaRateioPremio = $response.listaRateioPremio
        $acumulou = $response.acumulado 
            if($acumulou -eq 1){
              $acumulou = "sim"
            } else {
                $acumulou = "nao"
            }

        # Exibindo os dados
        Write-Output "Concurso: $concurso"
        Write-Output "Tipo Jogo: $tipojogo"
        Write-Output "Data de Apuração: $dataApuracao"
        Write-Output "Dezenas Sorteadas: $listaDezenas"
        Write-Output "Acumulou: $acumulou"
        Write-Output "Rateio de Prêmios:"
        $listaRateioPremio | ForEach-Object {
            Write-Output "Faixa: $($_.descricaoFaixa), Ganhadores: $($_.numeroDeGanhadores), Prêmio: R$ $($_.valorPremio)"
        }
    } else {
        Write-Output "Não foi possível obter os dados da API."
    }
}

function Get-ResultadoMaisMilionaria {
    param (
        [Parameter(Mandatory=$false)][int]$concurso = 0
    )

    if ($concurso -eq 0) {
        $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/MaisMilionaria/"
    } else {
        $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/MaisMilionaria/" + $concurso
    }

    # Fazendo a requisição para a API
    $response = Invoke-RestMethod -Uri $url -Method Get

    # Verificando se a resposta contém dados
    if ($response) {
        # Extraindo os dados desejados
        $concurso = $response.numero
        $tipojogo = $response.tipoJogo
        $dataApuracao = $response.dataApuracao
        $listaDezenas = $response.listaDezenas -join ", "
        $listaRateioPremio = $response.listaRateioPremio
        $trevos = $response.trevosSorteados
        $acumulou = $response.acumulado 
            if($acumulou -eq 1){
              $acumulou = "sim"
            } else {
                $acumulou = "nao"
            }

        # Exibindo os dados
        Write-Output "Concurso: $concurso"
        Write-Output "Tipo Jogo: $tipojogo"
        Write-Output "Data de Apuração: $dataApuracao"
        Write-Output "Dezenas Sorteadas: $listaDezenas"
        Write-Output "Trevos Sorteados: $trevos"
        Write-Output "Acumulou: $acumulou"
        Write-Output "Rateio de Prêmios:"
        $listaRateioPremio | ForEach-Object {
            Write-Output "Faixa: $($_.descricaoFaixa), Ganhadores: $($_.numeroDeGanhadores), Prêmio: R$ $($_.valorPremio)"
        }
    } else {
        Write-Output "Não foi possível obter os dados da API."
    }
}

function Get-ResultadoQuina {
    param (
        [Parameter(Mandatory=$false)][int]$concurso = 0
    )

    # Definindo a URL com base no número do sorteio
    if ($concurso -eq 0) {
        $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/quina/"
    } else {
        $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/quina/" + $concurso
    }

    try {
        # Fazendo a requisição para a API
        $response = Invoke-RestMethod -Uri $url -Method Get

        # Verificando se a resposta contém dados
        if ($response) {
            # Extraindo os dados desejados
            $concurso = $response.numero
            $tipojogo = $response.tipoJogo
            $dataApuracao = $response.dataApuracao
            $listaDezenas = $response.listaDezenas -join ", "
            $listaRateioPremio = $response.listaRateioPremio
            $acumulou = $response.acumulado 
            if($acumulou -eq 1){
              $acumulou = "sim"
            } else {
                $acumulou = "nao"
            }

            # Exibindo os dados
            Write-Output "Concurso: $concurso"
            Write-Output "Tipo Jogo: $tipojogo"
            Write-Output "Data de Apuração: $dataApuracao"
            Write-Output "Dezenas Sorteadas: $listaDezenas"
            Write-Output "Acumulou: $acumulou"
            Write-Output "Rateio de Prêmios:"
            $listaRateioPremio | ForEach-Object {
                Write-Output "Faixa: $($_.descricaoFaixa), Ganhadores: $($_.numeroDeGanhadores), Prêmio: R$ $($_.valorPremio)"
            }
        } else {
            Write-Output "Não foi possível obter os dados da API."
        }
    } catch {
        Write-Output "Erro ao acessar a API: $_"
    }
}

function Get-ResultadoLotomania {
    param (
        [Parameter(Mandatory=$false)][int]$concurso = 0
    )

    # Definindo a URL com base no número do sorteio
    if ($concurso -eq 0) {
        $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/lotomania/"
    } else {
        $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/lotomania/" + $concurso
    }

    try {
        # Fazendo a requisição para a API
        $response = Invoke-RestMethod -Uri $url -Method Get

        # Verificando se a resposta contém dados
        if ($response) {
            # Extraindo os dados desejados
            $concurso = $response.numero
            $tipojogo = $response.tipoJogo
            $dataApuracao = $response.dataApuracao
            $listaDezenas = $response.listaDezenas -join ", "
            $listaRateioPremio = $response.listaRateioPremio
            $acumulou = $response.acumulado 
            if($acumulou -eq 1){
              $acumulou = "sim"
            } else {
                $acumulou = "nao"
            }

            # Exibindo os dados
            Write-Output "Concurso: $concurso"
            Write-Output "Tipo Jogo: $tipojogo"
            Write-Output "Data de Apuração: $dataApuracao"
            Write-Output "Dezenas Sorteadas: $listaDezenas"
            Write-Output "Acumulou: $acumulou"
            Write-Output "Rateio de Prêmios:"
            $listaRateioPremio | ForEach-Object {
                Write-Output "Faixa: $($_.descricaoFaixa), Ganhadores: $($_.numeroDeGanhadores), Prêmio: R$ $($_.valorPremio)"
            }
        } else {
            Write-Output "Não foi possível obter os dados da API."
        }
    } catch {
        Write-Output "Erro ao acessar a API: $_"
    }
}

function Get-ResultadoSuperSete {
    param (
        [Parameter(Mandatory=$false)][int]$concurso = 0
    )

    # Definindo a URL com base no número do sorteio
    if ($concurso -eq 0) {
        $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/SuperSete/"
    } else {
        $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/SuperSete/" + $concurso
    }

    try {
        # Fazendo a requisição para a API
        $response = Invoke-RestMethod -Uri $url -Method Get

        # Verificando se a resposta contém dados
        if ($response) {
            # Extraindo os dados desejados
            $concurso = $response.numero
            $tipojogo = $response.tipoJogo
            $dataApuracao = $response.dataApuracao
            $listaDezenas = $response.listaDezenas -join ", "
            $listaRateioPremio = $response.listaRateioPremio
            $acumulou = $response.acumulado 
            if($acumulou -eq 1){
              $acumulou = "sim"
            } else {
                $acumulou = "nao"
            }

            # Exibindo os dados
            Write-Output "Concurso: $concurso"
            Write-Output "Tipo Jogo: $tipojogo"
            Write-Output "Data de Apuração: $dataApuracao"
            Write-Output "Dezenas Sorteadas: $listaDezenas"
            Write-Output "Acumulou: $acumulou"
            Write-Output "Rateio de Prêmios:"
            $listaRateioPremio | ForEach-Object {
                Write-Output "Faixa: $($_.descricaoFaixa), Ganhadores: $($_.numeroDeGanhadores), Prêmio: R$ $($_.valorPremio)"
            }
        } else {
            Write-Output "Não foi possível obter os dados da API."
        }
    } catch {
        Write-Output "Erro ao acessar a API: $_"
    }
}

function Get-ResultadoDuplaSena {
    param (
        [Parameter(Mandatory=$false)][int]$concurso = 0
    )

    # Definindo a URL com base no número do sorteio
    if ($concurso -eq 0) {
        $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/DuplaSena/"
    } else {
        $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/DuplaSena/" + $concurso
    }

    try {
        # Fazendo a requisição para a API
        $response = Invoke-RestMethod -Uri $url -Method Get

        # Verificando se a resposta contém dados
        if ($response) {
            # Extraindo os dados desejados
            $concurso = $response.numero
            $tipojogo = $response.tipoJogo
            $dataApuracao = $response.dataApuracao
            $listaDezenas = $response.listaDezenas -join ", "
            $listaDezenas2 = $response.listaDezenasSegundoSorteio -join ", "
            $listaRateioPremio = $response.listaRateioPremio
            $acumulou = $response.acumulado 
            if($acumulou -eq 1){
              $acumulou = "sim"
            } else {
                $acumulou = "nao"
            }

            # Exibindo os dados
            Write-Output "Concurso: $concurso"
            Write-Output "Tipo Jogo: $tipojogo"
            Write-Output "Data de Apuração: $dataApuracao"
            Write-Output "Dezenas Sorteadas 1º sorteio: $listaDezenas"
            Write-Output "Dezenas Sorteadas 2º sorteio: $listaDezenas2"
            Write-Output "Acumulou: $acumulou"
            Write-Output "Rateio de Prêmios:"
            $listaRateioPremio | ForEach-Object {
                Write-Output "Faixa: $($_.descricaoFaixa), Ganhadores: $($_.numeroDeGanhadores), Prêmio: R$ $($_.valorPremio)"
            }
        } else {
            Write-Output "Não foi possível obter os dados da API."
        }
    } catch {
        Write-Output "Erro ao acessar a API: $_"
    }
}

function Get-ResultadoDiaDeSorte {
    param (
        [Parameter(Mandatory=$false)][int]$concurso = 0
    )

    # Definindo a URL com base no número do sorteio
    if ($concurso -eq 0) {
        $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/DiaDeSorte/"
    } else {
        $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/DiaDeSorte/" + $concurso
    }

    try {
        # Fazendo a requisição para a API
        $response = Invoke-RestMethod -Uri $url -Method Get

        # Verificando se a resposta contém dados
        if ($response) {
            # Extraindo os dados desejados
            $concurso = $response.numero
            $tipojogo = $response.tipoJogo
            $dataApuracao = $response.dataApuracao
            $listaDezenas = $response.listaDezenas -join ", "
            $messorte = $response.nomeTimeCoracaoMesSorte 
            $listaRateioPremio = $response.listaRateioPremio
            $acumulou = $response.acumulado 
            if($acumulou -eq 1){
              $acumulou = "sim"
            } else {
                $acumulou = "nao"
            }

            # Exibindo os dados
            Write-Output "Concurso: $concurso"
            Write-Output "Tipo Jogo: $tipojogo"
            Write-Output "Data de Apuração: $dataApuracao"
            Write-Output "Dezenas Sorteadas 1º sorteio: $listaDezenas"
            Write-Output "Mês da Sorte: $messorte"
            Write-Output "Acumulou: $acumulou"
            Write-Output "Rateio de Prêmios:"
            $listaRateioPremio | ForEach-Object {
                Write-Output "Faixa: $($_.descricaoFaixa), Ganhadores: $($_.numeroDeGanhadores), Prêmio: R$ $($_.valorPremio)"
            }
        } else {
            Write-Output "Não foi possível obter os dados da API."
        }
    } catch {
        Write-Output "Erro ao acessar a API: $_"
    }
}