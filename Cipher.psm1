function Encyp 
{
    [CmdletBinding()]
    param 
    (
        $inputText    
    )

    begin
    {
        $inp = $inputText
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
function Set-Cipher
{
    [CmdletBinding()]
    param
    (
       [ValidateSet('Easy','Medium','Hard')]$level 
    )

    $inputText = Read-Host -Prompt "Give me something"
    if ($level -eq "Easy")
    {
        $result = Encyp -inputText $inputText
        return $result
    }
    elseif ($level -eq "Medium") 
    {
        $result = Encyp -inputText $inputText
        $result = Encyp -inputText $result
        return $result    
    }
    else {
        $result = Encyp -inputText $inputText
        $result = Encyp -inputText $result
        $result = Encyp -inputText $result
        return $result 
    }
    

}
function Get-CleanString 
{
    begin
    {
        $inp = Read-Host "Give Me Encode Text"
        $inp = $inp.ToLower()
    }
    process 
    {
        $data = @()
        $result = ""
        $inp.Split(" ") | ForEach-Object { $data += $_ }

        $max = $data[0].Length
        $totalElement = $data.Length
        
        for ($i = 0; $i -le ($max - 1); $i++) 
        {
            for ($j = 0; $j -le ($totalElement - 1 ); $j++) 
            {
                $result = $result + $data[$j][$i]
            }
        }   
    
   }
   end 
   {
        return $result
   }
}

# Export only the functions using PowerShell standard verb-noun naming.
# Be sure to list each exported functions in the FunctionsToExport field of the module manifest file.
# This improves performance of command discovery in PowerShell.
Export-ModuleMember -Function "Set-Cipher"
Export-ModuleMember -Function "Get-CleanString"
