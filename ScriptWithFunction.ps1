#region helper function
function Get-MathPower {
    param(
        [parameter(Mandatory)]
        [double]$Base,
        [parameter(Mandatory)]
        [double]$Power
    )
    [math]::Pow($Base, $Power)
}
function Get-MathSquare {
    param (
        [Parameter(Mandatory)]
        [double]$Number)
    Get-MathPower -Base $Number -Power 2
}
function Get-MathSquareRoot {
    param (
        [Parameter(Mandatory)]
        [double]$Number
    )
    [math]::Sqrt($Number)
}
#endregion helper function

#region Main
# An example script of self contained script.
# A times that you might have reason to create the script in this pattern instead of modularize it.
Get-MathSquare -Number 10
Get-MathSquareRoot -Number 3.1415926

#endregion Main