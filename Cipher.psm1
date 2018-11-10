# Implement your module commands in this script.
function Cipher
{
    [CmdletBinding()]
    param
    (
       [ValidateSet('Easy','Medium','Hard')]$level
    )

    begin
    {
        $inp = Read-Host "Give Me Somethings"
        $inp = $inp.Replace(' ','')
        $inp = $inp.ToLower()
    }
    process
    {
        $r = [math]::Sqrt($inp.Length)
        $sutun = [math]::Floor($r)
        $satir = [math]::Ceiling($r)
        $i = 0
        $a = @()

        do
        {
         $a += ,$inp.Substring($i,$sutun)
            $i = $i + $sutun

        } While ( ( $i + $sutun ) -lt $inp.Length )
        $a += ,$inp.Substring($i,$inp.Length - $i)

    }
    end
    {
        $t = ""
        for ($k = 0; $k -le ($sutun-1); $k++)
        {
            for ($j = 0; $j -le ($satir -1); $j++)
            {
                $t = $t + $a[$j][$k]
            }
            $t = $t + " "
        }
        return $t
    }


}

# Export only the functions using PowerShell standard verb-noun naming.
# Be sure to list each exported functions in the FunctionsToExport field of the module manifest file.
# This improves performance of command discovery in PowerShell.
Export-ModuleMember -Function *-*
