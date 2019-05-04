# Basic-Cipher

### Basic String Cipher
#### This is a simple encoder. Like Caesar Cipher. I plan to improve by adding the level scheme. Currently has return option :)

```powershell
D:\Cipher> Import-Module .\Cipher.psm1
D:\Cipher> Get-Command -Module Cipher

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Function        Set-Cipher                                         0.0        Cipher

D:\Cipher> Set-Cipher
Give Me Somethings: Happy SysAdmin Day
hyan asdd pyma psiy
D:\Cipher>
D:\Cipher> Get-CleanString
Give Me Encode Text: hyan asdd pyma psiy
happysysadminday
```

- [x] Adding the degree of difficulty.
- [X] Adding a decoding module.

```powershell
PS /root> Set-Cipher Easy  
Give me something: Lorem Ipsum is simply dummy text of the printing and typesetting industry.
lsmmfndt oupytttt rmlthiyi eiyeenpn msdxpgeg isutrasi pimoinen 
PS /root> Set-Cipher Medium
Give me something: Lorem Ipsum is simply dummy text of the printing and typesetting industry.
lttiexui sotynptm muripgro mpmeneai fylimgsn nttysiie dthedspn 
PS /root> Set-Cipher Hard  
Give me something: Lorem Ipsum is simply dummy text of the printing and typesetting industry.
litgnitt tsmremyh tomoagse itumisid eyrpfnis xnimynep uppeltdn 
PS /root> 
```

-[] Adding decoding with level properties. Now just decoding easy level text.