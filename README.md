# ModuloLoteriasCaixa
Módulo de Jogos e Busca de Resultados de Loterias Caixa Este módulo permite buscar os resultados das loterias da Caixa, como Mega-Sena, Quina, Lotofácil, entre outras, além de gerar os jogos para você.
***
Data | Versão | Descriçãp
---- |--------| -----------
02/11/2024 | 1.0.0  | Inicio do Projeto
04/11/2024 | 1.0.0  | Funções criadas de geração de jogos
21/12/2024 | 1.0.1  | Funções criadas sobre busca de resultados das loterias caixa
21/12/2024 | 1.0.2  | Alteração da função Get-Lotomania para ter um só parâmetro pois são só 50 dezenas que pode ser escolhida.
***
Para importar :
```powershell
Import-Module -Name "Caminho\Para\Seu\MeuModulo.psm1"
```
***
# Funções :

### `Get-DiaDeSorte`

A função `Get-DiaDeSorte` permite que você gere jogos da loteria Dia de Sorte da Caixa. Ela aceita dois parâmetros principais:

- **Parâmetro 1: $numTickets - Define quantos jogos você deseja gerar.
- **Parâmetro 2: $numDezenas - Define a quantidade de dezenas (números) que serão escolhidas para cada jogo.<br>
Obs.: São de 7 a 15 dezenas. 


###  Sintaxe

```powershell
Get-DiaDeSorte $numTickets <int> $numDezenas <int>

ps> Get-DiaDeSorte 1 7 
5,14,19,26,27,28,30 Novembro
```
***
### `Get-DuplaSena`

A função `Get-DuplaSena` permite que você gere jogos da loteria Dupla Sena da Caixa. Ela aceita dois parâmetros principais:

- **Parâmetro 1: $numTickets - Define quantos jogos você deseja gerar.
- **Parâmetro 2: $numDezenas - Define a quantidade de dezenas (números) que serão escolhidas para cada jogo.<br>
Obs.: São de 6 a 15 dezenas. 


###  Sintaxe
```powershell
Get-DuplaSena $numTickets <int> $numDezenas <int>

ps> Get-DuplaSena 1 6
16,17,20,32,35,47
```
***
### `Get-LotoFacil`

A função `Get-LotoFacil` permite que você gere jogos da loteria LotoFacil da Caixa. Ela aceita dois parâmetros principais:

- **Parâmetro 1: $numTickets - Define quantos jogos você deseja gerar.
- **Parâmetro 2: $numDezenas - Define a quantidade de dezenas (números) que serão escolhidas para cada jogo.<br>
Obs.: São de 15 a 20 dezenas. 


###  Sintaxe
```powershell
Get-LotoFacil $numTickets <int> $numDezenas <int>

ps> Get-LotoFacil 1 15
3,4,5,6,7,10,12,13,14,15,16,17,22,23,25
```
***
### `Get-Lotomania`

A função `Get-Lotomania` permite que você gere jogos da loteria Lotomania da Caixa. Ela aceita um parâmetro principal:

- **Parâmetro 1: $numTickets - Define quantos jogos você deseja gerar.

### Sintaxe
```powershell
Get-Lotomania $numTickets <int> 

ps> Get-Lotomania 1
4,6,8,10,12,13,14,15,20,21,23,24,27,30,33,34,35,36,37,39,40,41,46,47,48,51,52,54,56,58,61,62,63,64,65,66,68,71,74,76,79,80,82,83,89,90,91,92,93,94
```
***
### `Get-MegaSena`

A função `Get-MegaSena` permite que você gere jogos da loteria Mega-Sena da Caixa. Ela aceita dois parâmetros principais:

- **Parâmetro 1: $numTickets - Define quantos jogos você deseja gerar.
- **Parâmetro 2: $numDezenas - Define a quantidade de dezenas (números) que serão escolhidas para cada jogo.<br>
Obs.: São de 6 a 20 dezenas. 


###  Sintaxe
```powershell
Get-MegaSena $numTickets <int> $numDezenas <int>

ps> Get-MegaSena 1 6
9,15,20,26,27,29
```
***
### `Get-Milionaria`

A função `Get-Milionaria` permite que você gere jogos da loteria +Milionaria da Caixa. Ela aceita dois parâmetros principais:

- **Parâmetro 1: $numTickets - Define quantos jogos você deseja gerar.
- **Parâmetro 2: $numDezenas - Define a quantidade de dezenas (números) que serão escolhidas para cada jogo.<br>
Obs.: São de 6 a 12 dezenas. 
- **Parâmetro 3: $numTrevos - Define a quantidade de trevos (números) que serão escolhidas para cada jogo.<br>
Obs.: São de 1 a 6 trevos. 


###  Sintaxe
```powershell
Get-Milionaria $numTickets <int> $numDezenas <int> $numTrevos <int>

ps> Get-Milionaria 1 6 2
6,21,31,39,40,50, ; ,3,5
```
***
### `Get-Quina`

A função `Get-Quina` permite que você gere jogos da loteria Quina da Caixa. Ela aceita dois parâmetros principais:

- **Parâmetro 1: $numTickets - Define quantos jogos você deseja gerar.
- **Parâmetro 2: $numDezenas - Define a quantidade de dezenas (números) que serão escolhidas para cada jogo.<br>
Obs.: São de 5 a 15 dezenas. 


###  Sintaxe
```powershell
Get-Quina $numTickets <int> $numDezenas <int>

ps> Get-Quina 1 5
12,26,32,40,44
```
***
### `Get-SuperSete`

A função `Get-SuperSete` permite que você gere jogos da loteria SuperSete da Caixa. Ela aceita dois parâmetros principais:

- **Parâmetro 1: $numTickets - Define quantos jogos você deseja gerar.
- **Parâmetro 2: $numDezenas - Define a quantidade de dezenas (números) que serão escolhidas para cada jogo.<br>
Obs.: São de 7 a 21 dezenas. 


###  Sintaxe
```powershell
Get-SuperSete $numTickets <int> $numDezenas <int>

ps> Get-SuperSete 1 7
2405899
```
***
### `Get-ResultadoDiaDeSorte`

A função `Get-ResultadoDiaDeSorte` permite que você obtenha resultados de jogos da loteria Dia De Sorte da Caixa. Ela aceita um parâmetro que não é obrigatorio:
- **Parâmetro 1: $concurso - Você escolhe o número do concurso que quer buscar.<br>
Obs.: Se não colocar nenhum número é buscado o ultimo concurso.

###  Sintaxe
```powershell
Get-ResultadoDiaDeSorte $concurso <int>

ps> Get-ResultadoDiaDeSorte
Concurso: 1003
Tipo Jogo: DIA_DE_SORTE
Data de Apuração: 19/12/2024
Dezenas Sorteadas 1º sorteio: 04, 08, 11, 18, 20, 23, 24
Mes da Sorte: Junho
Acumulou: nao
Rateio de Prêmios:
Faixa: 7 acertos, Ganhadores: 1, Prêmio: R$ 197044.24
Faixa: 6 acertos, Ganhadores: 26, Prêmio: R$ 3247.98
Faixa: 5 acertos, Ganhadores: 1222, Prêmio: R$ 25.0
Faixa: 4 acertos, Ganhadores: 14499, Prêmio: R$ 5.0
Faixa: Mês da Sorte, Ganhadores: 36039, Prêmio: R$ 2.5

ps> Get-ResultadoDiaDeSorte 1002
Concurso: 1002
Tipo Jogo: DIA_DE_SORTE
Data de Apuração: 17/12/2024
Dezenas Sorteadas 1º sorteio: 04, 05, 10, 12, 17, 24, 29
Mes da Sorte: Agosto
Acumulou: nao
Rateio de Prêmios:
Faixa: 7 acertos, Ganhadores: 1, Prêmio: R$ 156191.93
Faixa: 6 acertos, Ganhadores: 103, Prêmio: R$ 928.42
Faixa: 5 acertos, Ganhadores: 2103, Prêmio: R$ 25.0
Faixa: 4 acertos, Ganhadores: 23781, Prêmio: R$ 5.0
Faixa: Mês da Sorte, Ganhadores: 43779, Prêmio: R$ 2.5
```
***
### `Get-ResultadoDuplaSena`

A função `Get-ResultadoDuplaSena` permite que você obtenha resultados de jogos da loteria Dupla Sena da Caixa. Ela aceita um parâmetro que não é obrigatorio:
- **Parâmetro 1: $concurso - Você escolhe o número do concurso que quer buscar.<br>
Obs.: Se não colocar nenhum número é buscado o ultimo concurso.

###  Sintaxe
```powershell
Get-ResultadoDuplaSena $concurso <int>

ps> Get-ResultadoDuplaSena
Concurso: 2754
Tipo Jogo: DUPLA_SENA
Data de Apuração: 20/12/2024
Dezenas Sorteadas 1º sorteio: 11, 20, 31, 34, 35, 43
Dezenas Sorteadas 2º sorteio: 02, 04, 12, 33, 41, 47
Acumulou: sim
Rateio de Prêmios:
Faixa: 6 acertos, Ganhadores: 0, Prêmio: R$ 0.0
Faixa: 5 acertos, Ganhadores: 9, Prêmio: R$ 5767.28
Faixa: 4 acertos, Ganhadores: 502, Prêmio: R$ 118.16
Faixa: 3 acertos, Ganhadores: 10319, Prêmio: R$ 2.87
Faixa: 6 acertos, Ganhadores: 0, Prêmio: R$ 0.0
Faixa: 5 acertos, Ganhadores: 11, Prêmio: R$ 4246.81
Faixa: 4 acertos, Ganhadores: 608, Prêmio: R$ 97.56
Faixa: 3 acertos, Ganhadores: 11851, Prêmio: R$ 2.5
 
ps> Get-ResultadoDuplaSena 2753
Concurso: 2753
Tipo Jogo: DUPLA_SENA
Data de Apuração: 18/12/2024
Dezenas Sorteadas 1º sorteio: 04, 12, 26, 29, 41, 45
Dezenas Sorteadas 2º sorteio: 08, 16, 19, 41, 47, 48
Acumulou: sim
Rateio de Prêmios:
Faixa: 6 acertos, Ganhadores: 0, Prêmio: R$ 0.0
Faixa: 5 acertos, Ganhadores: 8, Prêmio: R$ 5597.16
Faixa: 4 acertos, Ganhadores: 529, Prêmio: R$ 96.73
Faixa: 3 acertos, Ganhadores: 9803, Prêmio: R$ 2.61
Faixa: 6 acertos, Ganhadores: 0, Prêmio: R$ 0.0
Faixa: 5 acertos, Ganhadores: 4, Prêmio: R$ 10074.89
Faixa: 4 acertos, Ganhadores: 430, Prêmio: R$ 119.0
Faixa: 3 acertos, Ganhadores: 9451, Prêmio: R$ 2.7
```
***
### `Get-ResultadoLotoFacil`

A função `Get-ResultadoLotoFacil` permite que você obtenha resultados de jogos da loteria LotoFacil da Caixa. Ela aceita um parâmetro que não é obrigatorio:
- **Parâmetro 1: $concurso - Você escolhe o número do concurso que quer buscar.<br>
Obs.: Se não colocar nenhum número é buscado o ultimo concurso.

###  Sintaxe
```powershell
Get-ResultadoLotoFacil $concurso <int>

ps> Get-ResultadoLotoFacil
Concurso: 3274
Tipo Jogo: LOTOFACIL
Data de Apuração: 20/12/2024
Dezenas Sorteadas: 01, 02, 03, 04, 05, 07, 08, 11, 14, 16, 19, 20, 23, 24, 25
Acumulou: nao
Rateio de Prêmios:
Faixa: 15 acertos, Ganhadores: 5, Prêmio: R$ 341631.81
Faixa: 14 acertos, Ganhadores: 249, Prêmio: R$ 2054.86
Faixa: 13 acertos, Ganhadores: 7950, Prêmio: R$ 30.0
Faixa: 12 acertos, Ganhadores: 100791, Prêmio: R$ 12.0
Faixa: 11 acertos, Ganhadores: 566687, Prêmio: R$ 6.0

ps> Get-ResultadoLotoFacil 3273
Concurso: 3273
Tipo Jogo: LOTOFACIL
Data de Apuração: 19/12/2024
Dezenas Sorteadas: 02, 04, 06, 07, 08, 10, 12, 15, 16, 17, 21, 22, 23, 24, 25
Acumulou: nao
Rateio de Prêmios:
Faixa: 15 acertos, Ganhadores: 1, Prêmio: R$ 1640094.13
Faixa: 14 acertos, Ganhadores: 175, Prêmio: R$ 1965.09
Faixa: 13 acertos, Ganhadores: 7016, Prêmio: R$ 30.0
Faixa: 12 acertos, Ganhadores: 91822, Prêmio: R$ 12.0
Faixa: 11 acertos, Ganhadores: 506520, Prêmio: R$ 6.0
```
***
### `Get-ResultadoLotomania`

A função `Get-ResultadoLotomania` permite que você obtenha resultados de jogos da loteria Lotomania da Caixa. Ela aceita um parâmetro que não é obrigatorio:
- **Parâmetro 1: $concurso - Você escolhe o número do concurso que quer buscar.<br>
Obs.: Se não colocar nenhum número é buscado o ultimo concurso.

###  Sintaxe
```powershell
Get-ResultadoLotomania $concurso <int>

ps> Get-ResultadoLotomania
Concurso: 2713
Tipo Jogo: LOTOMANIA
Data de Apuração: 20/12/2024
Dezenas Sorteadas: 05, 09, 15, 18, 19, 24, 26, 28, 29, 32, 33, 38, 44, 53, 71, 83, 84, 87, 98, 99
Acumulou: nao
Rateio de Prêmios:
Faixa: 20 acertos, Ganhadores: 1, Prêmio: R$ 11708025.41
Faixa: 19 acertos, Ganhadores: 9, Prêmio: R$ 40791.89
Faixa: 18 acertos, Ganhadores: 151, Prêmio: R$ 2170.8
Faixa: 17 acertos, Ganhadores: 1163, Prêmio: R$ 197.29
Faixa: 16 acertos, Ganhadores: 6638, Prêmio: R$ 34.56
Faixa: 15 acertos, Ganhadores: 25767, Prêmio: R$ 8.9

ps> Get-ResultadoLotomania 2713
Concurso: 2713
Tipo Jogo: LOTOMANIA
Data de Apuração: 20/12/2024
Dezenas Sorteadas: 05, 09, 15, 18, 19, 24, 26, 28, 29, 32, 33, 38, 44, 53, 71, 83, 84, 87, 98, 99
Acumulou: nao
Rateio de Prêmios:
Faixa: 20 acertos, Ganhadores: 1, Prêmio: R$ 11708025.41
Faixa: 19 acertos, Ganhadores: 9, Prêmio: R$ 40791.89
Faixa: 18 acertos, Ganhadores: 151, Prêmio: R$ 2170.8
Faixa: 17 acertos, Ganhadores: 1163, Prêmio: R$ 197.29
Faixa: 16 acertos, Ganhadores: 6638, Prêmio: R$ 34.56
Faixa: 15 acertos, Ganhadores: 25767, Prêmio: R$ 8.9
```
***
### `Get-ResultadoMaisMilionaria`

A função `Get-ResultadoMaisMilionaria` permite que você obtenha resultados de jogos da loteria +Milionaria da Caixa. Ela aceita um parâmetro que não é obrigatorio:
- **Parâmetro 1: $concurso - Você escolhe o número do concurso que quer buscar.<br>
Obs.: Se não colocar nenhum número é buscado o ultimo concurso.

###  Sintaxe
```powershell
Get-ResultadoMaisMilionaria $concurso <int>

ps> Get-ResultadoMaisMilionaria
Concurso: 208
Tipo Jogo: MAIS_MILIONARIA
Data de Apuração: 18/12/2024
Dezenas Sorteadas: 01, 02, 03, 12, 18, 25
Trevos Sorteados: 1 6
Acumulou: sim
Rateio de Prêmios:
Faixa: 6 acertos + 2 trevos, Ganhadores: 0, Prêmio: R$ 0.0
Faixa: 6 acertos + 1 ou nenhum trevo, Ganhadores: 0, Prêmio: R$ 0.0
Faixa: 5 acertos + 2 trevos, Ganhadores: 1, Prêmio: R$ 202867.82
Faixa: 5 acertos + 1 ou nenhum trevo, Ganhadores: 25, Prêmio: R$ 3606.54
Faixa: 4 acertos + 2 trevos, Ganhadores: 94, Prêmio: R$ 1027.69
Faixa: 4 acertos + 1 ou nenhum trevo, Ganhadores: 1182, Prêmio: R$ 81.72
Faixa: 3 acertos + 2 trevos, Ganhadores: 1378, Prêmio: R$ 50.0
Faixa: 3 acertos + 1 trevo, Ganhadores: 9630, Prêmio: R$ 24.0
Faixa: 2 acertos + 2 trevos, Ganhadores: 9205, Prêmio: R$ 12.0
Faixa: 2 acertos + 1 trevo, Ganhadores: 64838, Prêmio: R$ 6.0

ps> Get-ResultadoMaisMilionaria 207
Concurso: 207
Tipo Jogo: MAIS_MILIONARIA
Data de Apuração: 14/12/2024
Dezenas Sorteadas: 01, 13, 24, 32, 33, 44
Trevos Sorteados: 1 5
Acumulou: sim
Rateio de Prêmios:
Faixa: 6 acertos + 2 trevos, Ganhadores: 0, Prêmio: R$ 0.0
Faixa: 6 acertos + 1 ou nenhum trevo, Ganhadores: 0, Prêmio: R$ 0.0
Faixa: 5 acertos + 2 trevos, Ganhadores: 5, Prêmio: R$ 44231.49
Faixa: 5 acertos + 1 ou nenhum trevo, Ganhadores: 49, Prêmio: R$ 2005.97
Faixa: 4 acertos + 2 trevos, Ganhadores: 88, Prêmio: R$ 1196.73
Faixa: 4 acertos + 1 ou nenhum trevo, Ganhadores: 1287, Prêmio: R$ 81.82
Faixa: 3 acertos + 2 trevos, Ganhadores: 1408, Prêmio: R$ 50.0
Faixa: 3 acertos + 1 trevo, Ganhadores: 10927, Prêmio: R$ 24.0
Faixa: 2 acertos + 2 trevos, Ganhadores: 9174, Prêmio: R$ 12.0
Faixa: 2 acertos + 1 trevo, Ganhadores: 75609, Prêmio: R$ 6.0
```
***
### `Get-ResultadoMegaSena`

A função `Get-ResultadoMegaSena` permite que você obtenha resultados de jogos da loteria MegaSena da Caixa. Ela aceita um parâmetro que não é obrigatorio:
- **Parâmetro 1: $concurso - Você escolhe o número do concurso que quer buscar.<br>
Obs.: Se não colocar nenhum número é buscado o ultimo concurso.

###  Sintaxe
```powershell
Get-ResultadoMegaSena $concurso <int>

ps> Get-ResultadoMegaSena
Concurso: 2809
Tipo Jogo: MEGA_SENA
Data de Apuração: 17/12/2024
Dezenas Sorteadas: 02, 04, 15, 28, 34, 39
Acumulou: sim
Rateio de Prêmios:
Faixa: 6 acertos, Ganhadores: 0, Prêmio: R$ 0.0
Faixa: 5 acertos, Ganhadores: 39, Prêmio: R$ 60526.4
Faixa: 4 acertos, Ganhadores: 5000, Prêmio: R$ 674.43

ps> Get-ResultadoMegaSena 2807
Concurso: 2807
Tipo Jogo: MEGA_SENA
Data de Apuração: 12/12/2024
Dezenas Sorteadas: 08, 25, 49, 52, 55, 56
Acumulou: sim
Rateio de Prêmios:
Faixa: 6 acertos, Ganhadores: 0, Prêmio: R$ 0.0
Faixa: 5 acertos, Ganhadores: 18, Prêmio: R$ 104535.16
Faixa: 4 acertos, Ganhadores: 2025, Prêmio: R$ 1327.43
```
***
### `Get-ResultadoQuina`

A função `Get-ResultadoQuina` permite que você obtenha resultados de jogos da loteria Quina da Caixa. Ela aceita um parâmetro que não é obrigatorio:
- **Parâmetro 1: $concurso - Você escolhe o número do concurso que quer buscar.<br>
Obs.: Se não colocar nenhum número é buscado o ultimo concurso.

###  Sintaxe
```powershell
Get-ResultadoQuina $concurso <int>

ps> Get-ResultadoQuina
Concurso: 6612
Tipo Jogo: QUINA
Data de Apuração: 20/12/2024
Dezenas Sorteadas: 20, 22, 34, 38, 49
Acumulou: nao
Rateio de Prêmios:
Faixa: 5 acertos, Ganhadores: 1, Prêmio: R$ 24904443.14
Faixa: 4 acertos, Ganhadores: 122, Prêmio: R$ 8179.88
Faixa: 3 acertos, Ganhadores: 9724, Prêmio: R$ 97.74
Faixa: 2 acertos, Ganhadores: 243706, Prêmio: R$ 3.89

ps> Get-ResultadoQuina 6611
Concurso: 6611
Tipo Jogo: QUINA
Data de Apuração: 19/12/2024
Dezenas Sorteadas: 16, 18, 34, 41, 73
Acumulou: sim
Rateio de Prêmios:
Faixa: 5 acertos, Ganhadores: 0, Prêmio: R$ 0.0
Faixa: 4 acertos, Ganhadores: 86, Prêmio: R$ 10359.16
Faixa: 3 acertos, Ganhadores: 7857, Prêmio: R$ 107.98
Faixa: 2 acertos, Ganhadores: 204283, Prêmio: R$ 4.15
```
***
### `Get-ResultadoSuperSete`

A função `Get-ResultadoSuperSete` permite que você obtenha resultados de jogos da loteria SuperSete da Caixa. Ela aceita um parâmetro que não é obrigatorio:
- **Parâmetro 1: $concurso - Você escolhe o número do concurso que quer buscar.<br>
Obs.: Se não colocar nenhum número é buscado o ultimo concurso.

###  Sintaxe
```powershell
Get-ResultadoSuperSete $concurso <int>

ps> Get-ResultadoSuperSete
Concurso: 636
Tipo Jogo: SUPER_SETE
Data de Apuração: 20/12/2024
Dezenas Sorteadas: 7, 5, 6, 0, 5, 0, 2
Acumulou: sim
Rateio de Prêmios:
Faixa: 7 acertos, Ganhadores: 0, Prêmio: R$ 0.0
Faixa: 6 acertos, Ganhadores: 0, Prêmio: R$ 0.0
Faixa: 5 acertos, Ganhadores: 22, Prêmio: R$ 1196.91
Faixa: 4 acertos, Ganhadores: 358, Prêmio: R$ 73.55
Faixa: 3 acertos, Ganhadores: 3490, Prêmio: R$ 5.0

ps> Get-ResultadoSuperSete 634
Concurso: 634
Tipo Jogo: SUPER_SETE
Data de Apuração: 16/12/2024
Dezenas Sorteadas: 7, 0, 3, 3, 9, 3, 0
Acumulou: sim
Rateio de Prêmios:
Faixa: 7 acertos, Ganhadores: 0, Prêmio: R$ 0.0
Faixa: 6 acertos, Ganhadores: 0, Prêmio: R$ 0.0
Faixa: 5 acertos, Ganhadores: 23, Prêmio: R$ 1074.4
Faixa: 4 acertos, Ganhadores: 363, Prêmio: R$ 68.07
Faixa: 3 acertos, Ganhadores: 3415, Prêmio: R$ 5.0
```
***
# Future 
### Planned 

| Tarefa | Descrição | Status |
|--------|------------|--------|
| Unificação das funções `Get-MegaSena` e `Get-ResultadoMegaSena` | - Sem parâmetros, retornará o resultado do último concurso. <br> - Com um parâmetro (número do concurso), retornará o resultado do concurso informado. <br> - Com dois parâmetros, retornará os jogos gerados. | A Fazer |
| Unificação das funções `Get-DiaDeSorte` e `Get-ResultadoDiaDeSorte` | - Sem parâmetros, retornará o resultado do último concurso. <br> - Com um parâmetro (número do concurso), retornará o resultado do concurso informado. <br> - Com dois parâmetros, retornará os jogos gerados. | A Fazer |
| Unificação das funções `Get-LotoFacil` e `Get-ResultadoLotoFacil` | - Sem parâmetros, retornará o resultado do último concurso. <br> - Com um parâmetro (número do concurso), retornará o resultado do concurso informado. <br> - Com dois parâmetros, retornará os jogos gerados. | A Fazer |
| Unificação das funções `Get-Quina` e `Get-ResultadoQuina` | - Sem parâmetros, retornará o resultado do último concurso. <br> - Com um parâmetro (número do concurso), retornará o resultado do concurso informado. <br> - Com dois parâmetros, retornará os jogos gerados. | A Fazer |
| Unificação das funções `Get-Lotomania` e `Get-ResultadoLotomania` | - Sem parâmetros, retornará o resultado do último concurso. <br> - Com um parâmetro (número do concurso), retornará o resultado do concurso informado. <br> - Com dois parâmetros, sendo que o primeiro é zero e o segundo o número de jogos, retornará os jogos gerados. | A Fazer |
| Unificação das funções `Get-SuperSete` e `Get-ResultadoSuperSete` | - Sem parâmetros, retornará o resultado do último concurso. <br> - Com um parâmetro (número do concurso), retornará o resultado do concurso informado. <br> - Com dois parâmetros, retornará os jogos gerados. | A Fazer |
| Unificação das funções `Get-Milionaria` e `Get-ResultadoMaisMilionaria` | - Sem parâmetros, retornará o resultado do último concurso. <br> - Com um parâmetro (número do concurso), retornará o resultado do concurso informado. <br> - Com três parâmetros, retornará os jogos gerados. | A Fazer |
| Unificação das funções `Get-DuplaSena` e `Get-ResultadoDuplaSena` | - Sem parâmetros, retornará o resultado do último concurso. <br> - Com um parâmetro (número do concurso), retornará o resultado do concurso informado. <br> - Com dois parâmetros, retornará os jogos gerados. | A Fazer |
| Criar função para obter resultados de jogos da loteria Timemania da Caixa | Desenvolver função para obter resultados da loteria Timemania | A Fazer |
| Criar função para obter resultados de jogos da loteria Federal da Caixa | Desenvolver função para obter resultados da loteria Federal | A Fazer |
| Criar função para obter resultados de jogos da loteria Loteca da Caixa | Desenvolver função para obter resultados da loteria Loteca | A Fazer |

