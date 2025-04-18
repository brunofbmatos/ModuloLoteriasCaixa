function MegaSena {
    param (
        [Parameter(Mandatory=$false)][int]$param1 = 0,
        [Parameter(Mandatory=$false)][int]$param2 = 0
    )

    if ($param1 -eq 0 -and $param2 -eq 0) {
        try {
            $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/megasena/"
            $response = Invoke-RestMethod -Uri $url -Method Get

            if ($response) {
                $concurso = $response.numero
                $tipojogo = $response.tipoJogo
                $dataApuracao = $response.dataApuracao
                $listaDezenas = $response.listaDezenas -join ", "
                $listaRateioPremio = $response.listaRateioPremio
                $acumulou = $response.acumulado
                if ($acumulou -eq 1) {
                    $acumulou = "sim"
                } else {
                    $acumulou = "nao"
                }

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
            Write-Output "Erro ao acessar a API: $url"
        }
    } elseif ($param1 -ne 0 -and $param2 -eq 0) {
        try {
            $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/megasena/" + $param1
            $response = Invoke-RestMethod -Uri $url -Method Get

            if ($response) {
                $concurso = $response.numero
                $tipojogo = $response.tipoJogo
                $dataApuracao = $response.dataApuracao
                $listaDezenas = $response.listaDezenas -join ", "
                $listaRateioPremio = $response.listaRateioPremio
                $acumulou = $response.acumulado
                if ($acumulou -eq 1) {
                    $acumulou = "sim"
                } else {
                    $acumulou = "nao"
                }

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
            Write-Output "Erro ao acessar a API: $url"
        }
    } elseif ($param1 -ne 0 -and $param2 -ne 0) {
        if ($param2 -lt 6 -or $param2 -gt 20) {
            Write-Output "Erro: param2 deve estar entre 6 e 20."
            return
        }
        try {
            $Dezenas = 1..60
            1..$param1 | ForEach-Object { ($Dezenas | Get-Random -Count $param2 | Sort-Object) -join ',' }
        } catch {
            Write-Output "Erro ao gerar os jogos: $_"
        }
    }
}

function LotoFacil {
    param (
        [Parameter(Mandatory=$false)][int]$param1 = 0,
        [Parameter(Mandatory=$false)][int]$param2 = 0
    )

    if ($param1 -eq 0 -and $param2 -eq 0) {
        try {
            $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/lotofacil/"
            $response = Invoke-RestMethod -Uri $url -Method Get

            if ($response) {
                $concurso = $response.numero
                $tipojogo = $response.tipoJogo
                $dataApuracao = $response.dataApuracao
                $listaDezenas = $response.listaDezenas -join ", "
                $listaRateioPremio = $response.listaRateioPremio
                $acumulou = $response.acumulado
                if ($acumulou -eq 1) {
                    $acumulou = "sim"
                } else {
                    $acumulou = "nao"
                }

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
            Write-Output "Erro ao acessar a API: $url"
        }
    } elseif ($param1 -ne 0 -and $param2 -eq 0) {
        try {
            $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/lotofacil/" + $param1
            $response = Invoke-RestMethod -Uri $url -Method Get

            if ($response) {
                $concurso = $response.numero
                $tipojogo = $response.tipoJogo
                $dataApuracao = $response.dataApuracao
                $listaDezenas = $response.listaDezenas -join ", "
                $listaRateioPremio = $response.listaRateioPremio
                $acumulou = $response.acumulado
                if ($acumulou -eq 1) {
                    $acumulou = "sim"
                } else {
                    $acumulou = "nao"
                }

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
            Write-Output "Erro ao acessar a API: $url"
        }
    } elseif ($param1 -ne 0 -and $param2 -ne 0) {
        if ($param2 -lt 15 -or $param2 -gt 20) {
            Write-Output "Erro: param2 deve estar entre 15 e 20."
            return
        }
        try {
            $Dezenas = 1..25
            1..$param1 | ForEach-Object { ($Dezenas | Get-Random -Count $param2 | Sort-Object) -join ',' }
        } catch {
            Write-Output "Erro ao gerar os jogos: $_"
        }
    }
}

function Quina {
    param (
        [Parameter(Mandatory=$false)][int]$param1 = 0,
        [Parameter(Mandatory=$false)][int]$param2 = 0
    )

    if ($param1 -eq 0 -and $param2 -eq 0) {
        try {
            $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/quina/"
            $response = Invoke-RestMethod -Uri $url -Method Get

            if ($response) {
                $concurso = $response.numero
                $tipojogo = $response.tipoJogo
                $dataApuracao = $response.dataApuracao
                $listaDezenas = $response.listaDezenas -join ", "
                $listaRateioPremio = $response.listaRateioPremio
                $acumulou = $response.acumulado
                if ($acumulou -eq 1) {
                    $acumulou = "sim"
                } else {
                    $acumulou = "nao"
                }

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
            Write-Output "Erro ao acessar a API: $url"
        }
    } elseif ($param1 -ne 0 -and $param2 -eq 0) {
        try {
            $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/quina/" + $param1
            $response = Invoke-RestMethod -Uri $url -Method Get

            if ($response) {
                $concurso = $response.numero
                $tipojogo = $response.tipoJogo
                $dataApuracao = $response.dataApuracao
                $listaDezenas = $response.listaDezenas -join ", "
                $listaRateioPremio = $response.listaRateioPremio
                $acumulou = $response.acumulado
                if ($acumulou -eq 1) {
                    $acumulou = "sim"
                } else {
                    $acumulou = "nao"
                }

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
            Write-Output "Erro ao acessar a API: $url"
        }
    } elseif ($param1 -ne 0 -and $param2 -ne 0) {
        if ($param2 -lt 5 -or $param2 -gt 15) {
            Write-Output "Erro: param2 deve estar entre 5 e 15."
            return
        }
        try {
            $Dezenas =  1..80
            1..$param1 | ForEach-Object { ($Dezenas | Get-Random -Count $param2 | Sort-Object) -join ',' }
        } catch {
            Write-Output "Erro ao gerar os jogos: $_"
        }
    }
}

function Lotomania {
    param (
        [Parameter(Mandatory=$false)][int]$param1 = 0,
        [Parameter(Mandatory=$false)][int]$param2 = 0
    )

    if ($param1 -eq 0 -and $param2 -eq 0) {
        try {
            $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/lotomania/"
            $response = Invoke-RestMethod -Uri $url -Method Get

            if ($response) {
                $concurso = $response.numero
                $tipojogo = $response.tipoJogo
                $dataApuracao = $response.dataApuracao
                $listaDezenas = $response.listaDezenas -join ", "
                $listaRateioPremio = $response.listaRateioPremio
                $acumulou = $response.acumulado
                if ($acumulou -eq 1) {
                    $acumulou = "sim"
                } else {
                    $acumulou = "nao"
                }

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
            Write-Output "Erro ao acessar a API: $url"
        }
    } elseif ($param1 -ne 0 -and $param2 -eq 0) {
        try {
            $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/lotomania/" + $param1
            $response = Invoke-RestMethod -Uri $url -Method Get

            if ($response) {
                $concurso = $response.numero
                $tipojogo = $response.tipoJogo
                $dataApuracao = $response.dataApuracao
                $listaDezenas = $response.listaDezenas -join ", "
                $listaRateioPremio = $response.listaRateioPremio
                $acumulou = $response.acumulado
                if ($acumulou -eq 1) {
                    $acumulou = "sim"
                } else {
                    $acumulou = "nao"
                }

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
            Write-Output "Erro ao acessar a API: $url"
        }
    } elseif ($param1 -ne 0 -and $param2 -ne 0) {
        try {
            $Dezenas = 0..99
            $param2 = 50
            1..$param1 | ForEach-Object { ($Dezenas | Get-Random -Count $param2 | Sort-Object) -join ',' }
        } catch {
            Write-Output "Erro ao gerar os jogos: $_"
        }
    } else {
        Write-Output "Erro: Parâmetros inválidos."
    }
}

function DuplaSena {
    param (
        [Parameter(Mandatory=$false)][int]$param1 = 0,
        [Parameter(Mandatory=$false)][int]$param2 = 0
    )

    if ($param1 -eq 0 -and $param2 -eq 0) {
        try {
            $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/DuplaSena/"
            $response = Invoke-RestMethod -Uri $url -Method Get

            if ($response) {
                $concurso = $response.numero
                $tipojogo = $response.tipoJogo
                $dataApuracao = $response.dataApuracao
                $listaDezenas = $response.listaDezenas -join ", "
                $listaRateioPremio = $response.listaRateioPremio
                $acumulou = $response.acumulado
                if ($acumulou -eq 1) {
                    $acumulou = "sim"
                } else {
                    $acumulou = "nao"
                }

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
            Write-Output "Erro ao acessar a API: $url"
        }
    } elseif ($param1 -ne 0 -and $param2 -eq 0) {
        try {
            $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/DuplaSena/" + $param1
            $response = Invoke-RestMethod -Uri $url -Method Get

            if ($response) {
                $concurso = $response.numero
                $tipojogo = $response.tipoJogo
                $dataApuracao = $response.dataApuracao
                $listaDezenas = $response.listaDezenas -join ", "
                $listaRateioPremio = $response.listaRateioPremio
                $acumulou = $response.acumulado
                if ($acumulou -eq 1) {
                    $acumulou = "sim"
                } else {
                    $acumulou = "nao"
                }

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
            Write-Output "Erro ao acessar a API: $url"
        }
    } elseif ($param1 -ne 0 -and $param2 -ne 0) {
        if ($param2 -lt 6 -or $param2 -gt 15) {
            Write-Output "Erro: param2 deve estar entre 6 e 15."
            return
        }
        try {
            $Dezenas = 1..25
            1..$param1 | ForEach-Object { ($Dezenas | Get-Random -Count $param2 | Sort-Object) -join ',' }
        } catch {
            Write-Output "Erro ao gerar os jogos: $_"
        }
    }
}

function DiaDeSorte {
    param (
        [Parameter(Mandatory=$false)][int]$param1 = 0,
        [Parameter(Mandatory=$false)][int]$param2 = 0
    )

    if ($param1 -eq 0 -and $param2 -eq 0) {
        try {
            $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/diadesorte/"
            $response = Invoke-RestMethod -Uri $url -Method Get

            if ($response) {
                $concurso = $response.numero
                $tipojogo = $response.tipoJogo
                $dataApuracao = $response.dataApuracao
                $listaDezenas = $response.listaDezenas -join ", "
                $messorte = $response.nomeTimeCoracaoMesSorte
                $listaRateioPremio = $response.listaRateioPremio
                $acumulou = if ($response.acumulado -eq 1) {"sim"} else {"nao"}

                Write-Output "Concurso: $concurso"
                Write-Output "Tipo Jogo: $tipojogo"
                Write-Output "Data de Apuração: $dataApuracao"
                Write-Output "Dezenas Sorteadas: $listaDezenas"
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
            Write-Output "Erro ao acessar a API: $url"
        }
    } elseif ($param1 -ne 0 -and $param2 -eq 0) {
        try {
            $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/diadesorte/$param1"
            $response = Invoke-RestMethod -Uri $url -Method Get

            if ($response) {
                $concurso = $response.numero
                $tipojogo = $response.tipoJogo
                $dataApuracao = $response.dataApuracao
                $listaDezenas = $response.listaDezenas -join ", "
                $messorte = $response.nomeTimeCoracaoMesSorte
                $listaRateioPremio = $response.listaRateioPremio
                $acumulou = if ($response.acumulado -eq 1) {"sim"} else {"nao"}

                Write-Output "Concurso: $concurso"
                Write-Output "Tipo Jogo: $tipojogo"
                Write-Output "Data de Apuração: $dataApuracao"
                Write-Output "Dezenas Sorteadas: $listaDezenas"
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
            Write-Output "Erro ao acessar a API: $url"
        }
    } elseif ($param1 -ne 0 -and $param2 -ne 0) {
        if ($param2 -lt 7 -or $param2 -gt 15) {
            Write-Output "Erro: param2 deve estar entre 7 e 15."
            return
        }
        try {
            $Dezenas = 1..31
            $Meses = @("Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro")

            1..$param1 | ForEach-Object {
                $numeros = ($Dezenas | Get-Random -Count $param2 | Sort-Object) -join ", "
                $mes = $Meses | Get-Random
                Write-Output "$numeros - Mês da Sorte: $mes"
            }
        } catch {
            Write-Output "Erro ao gerar os jogos: $_"
        }
    } else {
        Write-Output "Erro: Parâmetros inválidos."
    }
}

function SuperSete {
    param (
        [Parameter(Mandatory=$false)][int]$param1 = 0,
        [Parameter(Mandatory=$false)][int]$param2 = 0
    )

    if ($param1 -eq 0 -and $param2 -eq 0) {
        try {
            $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/SuperSete/"
            $response = Invoke-RestMethod -Uri $url -Method Get

            if ($response) {
                $concurso = $response.numero
                $tipojogo = $response.tipoJogo
                $dataApuracao = $response.dataApuracao
                $listaDezenas = $response.listaDezenas -join ", "
                $listaRateioPremio = $response.listaRateioPremio
                $acumulou = $response.acumulado
                if ($acumulou -eq 1) {
                    $acumulou = "sim"
                } else {
                    $acumulou = "nao"
                }

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
            Write-Output "Erro ao acessar a API: $url"
        }
    } elseif ($param1 -ne 0 -and $param2 -eq 0) {
        try {
            $url = "https://servicebus2.caixa.gov.br/portaldeloterias/api/SuperSete/" + $param1
            $response = Invoke-RestMethod -Uri $url -Method Get

            if ($response) {
                $concurso = $response.numero
                $tipojogo = $response.tipoJogo
                $dataApuracao = $response.dataApuracao
                $listaDezenas = $response.listaDezenas -join ", "
                $listaRateioPremio = $response.listaRateioPremio
                $acumulou = $response.acumulado
                if ($acumulou -eq 1) {
                    $acumulou = "sim"
                } else {
                    $acumulou = "nao"
                }

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
            Write-Output "Erro ao acessar a API: $url"
        }
    } elseif ($param1 -ne 0 -and $param2 -ne 0) {
        if ($param2 -lt 7 -or $param2 -gt 21) {
            Write-Output "Erro: param2 deve estar entre 7 e 21."
            return
        }
        try {
            $numeros = 0..9
            1..$param1 | ForEach-Object { -join (1..7 | ForEach-Object { $numeros | Get-Random })}
        } catch {
            Write-Output "Erro ao gerar os jogos: $_"
        }
    }
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