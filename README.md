# ModuloLoteriasCaixa
Modulo em PowerShell de Loterias Caixa
***
Data | Versão| Descriçãp
---- | ------- | -----------
02/11/2024 | 1.0.0 | Inicio do Projeto
04/11/2024 | 1.0.0 | Funções criadas
***

Para importar :
```powershell
Import-Module -Name "Caminho\Para\Seu\MeuModulo.psm1"
```
***
As Funções :
```powershell
ps> Get-DiaDeSorte 1 7
5,14,19,26,27,28,30 Novembro
```
```powershell
ps> Get-DuplaSena 1 6
16,17,20,32,35,47
```
```powershell
ps> Get-LotoFacil 1 15
3,4,5,6,7,10,12,13,14,15,16,17,22,23,25
```
```powershell
ps> Get-Lotomania 1 20
6,11,20,27,28,30,33,45,46,50,51,56,57,62,63,64,79,88,98,99
```
```powershell
ps> Get-MegaSena 1 6
9,15,20,26,27,29
```
```powershell
ps> Get-Milionaria 1 6 2
6,21,31,39,40,50, ; ,3,5
```
```powershell
ps> Get-Quina 1 5
12,26,32,40,44
```
```powershell
ps> Get-SuperSete 1 7
2405899
```






