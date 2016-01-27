## ArrayPower.ps1
## Outputs inputted power of given array
##
## Author:   J. Lerma
## Date:     December 13, 2015
##
## Note: Function contains CLI help info.
##
### VARIABLES
$int_power = 0
$var_a = 0
$int_array = 0,0
$int_array2 = 0,0

### FUNCTIONS
function pow ([int]$base,[int]$power)
    {
        $int_a = 0
        $int_b = 1
        
        while ($int_a -lt $power)
            {
            $int_b = $int_b * $base
            $int_a++
            }
        return $int_b
        
            <#
            .SYNOPSIS 
            Calculates supplied base to supplied power.

            .DESCRIPTION
            Calculates supplied base to supplied power.
            Needs two integer inputs for base and power.

            .PARAMETER base
            Integer that is to be operated on. Defaults to 1.
            If float is used, it will be rounded up to nearest integer.

            .PARAMETER power
            Integer that specifies what power to evaluate the base to.
            If float is used, it will be rounded up to nearest integer.

            .INPUTS
            None. You cannot pipe objects to pow.

            .OUTPUTS
            System.Integer. pow returns an integer result of base to given power.

            .EXAMPLE
            C:\PS> pow 3 2
            9

            .EXAMPLE
            C:\PS> pow -base 4 -power 1
            4
            
            .EXAMPLE
            C:\PS> pow 2 0
            1

            .LINK
            Set-Item
            #>
    }

### MAIN

$int_power = read-host "To what power are we calculating?"
$int_array = read-host "What numbers are we operating on?"

while ($var_a -lt $int_array.length)
{
    $int_array2[$var_a] = $int_array[$var_a]
}

foreach ($var_a in $int_array2)
{
    pow $var_a $int_power
}