#Contains test
#JLS
$profiles = get-childitem C:\users\jasonsa\desktop\profiles
$users = @('jasonsa','troyh','alissah')
foreach ($profile in $profiles)
{

     #if folder has .v2 extension this parses it from the username
    if ($profile.Extension -eq ".v2")
    {
        $userName = $profile.name.Split(".")[0]
    }
    Else
    {
        $userName = $profile.Name
    }

    if ($users -contains $userName)
    {
        Write-Host "Found" + $profile.Name
        Write-Host $profile.Name 
        Write-Host $userName
        
    }
    else
    {
        Write-Host "Could not find" + $profile.Name
    }
}

