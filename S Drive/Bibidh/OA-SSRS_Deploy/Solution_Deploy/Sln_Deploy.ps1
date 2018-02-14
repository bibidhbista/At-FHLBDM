﻿<#

POWERSHELL COMMAND:
./Sln_Deploy.ps1 -environment "Prod" -svnrepopath "file:///c:/users/bbista/desktop/svn/" -solutionname "ADV/adventureworks sample reports sql2012.sln"


PARAMS:

ENVIRONMENT: DEV/TEST/PROD/UAT : SELECT PROD FOR DEPLOYS OR AS MENTIONED IN THE CONFIGURATION FILE OF THE SOLUTION
SVNREPOPATH: PATH TO SVN REPOSITORY (NOTE: PATH TO SUB-DIRECTORY INSIDE THE REPO WON'T WORK. EX: "file:///c:/users/bbista/desktop/svn/ADV" ABOVE WON'T WORK)
SOLUTIONNAME: PATH TO THE SOLUTION OR SOLUTION NAME
#>

[CmdletBinding()]
   

        param (
                   # The Environment variable for Dev/Test/UAT/Prod
                   [Parameter(Mandatory=$True)]
                   [ValidateNotNull()]
                   [ValidateSet('Dev','Test','UAT','Prod')] 
                        [string] $Environment,
                    # SVN Path to the solution/report
                    [Parameter(Mandatory=$True)]
                    [ValidateNotNull()]
                        [string] $svnRepoPath,
                  
                    # Name of the Solution or sub-path to sln file
                    [Parameter(Mandatory=$True)]
                    [ValidateNotNull()]
                        [string] $solutionName
                    
                       
                  )
    ECHO "======================== Preparing SSRS Deployment =======================`n"
    

    # Adding path to environment variable
    Echo "`n============= Adding path to System Variables ==========`n"
    $condition = $env:path -notlike '*Program Files\TortoiseSVN\bin*' -or $env:path -notlike '*Tools\Binn*' -or $env:path -notlike '*Common7\IDE*'
    try{
         if($condition){
            $env:path="$env:path;C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE;C:\Program Files\TortoiseSVN\bin;C:\Program Files (x86)\Microsoft SQL Server\130\Tools\Binn"
        }
    }
    catch{
        $ErrorActionPreference ="STOP"        
        write-error "Coudln't add path to system variables. Make sure you have admin privileges."
    }


    # Path variables for svn checkout/export
    #$svnrepopath ="file:///c:/users/bbista/desktop/svn/"
    #$solutionName = "Adv/adventureworks sample reports sql2012.sln"
    
    
    # Pull from SVN and stage it locally
    # SVN Checkout and stage to a local path for the deploy
    $timestamp =$(get-date -f yyyy-MM-dd)
    $svnLocalPath = "$PsScriptRoot\SolutionStaged For Deploy_$timestamp"
    
    # for solution file
        ECHO "=============== Checking out from $svnRepopath to $svnLocalPath ==========`n"
        svn co $svnRepoPath $svnLocalPath
   
    # solution path is to be replaced by the path reports are staged on
    $solutionpath ="$svnLocalPath\$solutionName"

  
    # All of the settings and target server url must be set in solution file
    # If not, dev must change the target server according to the environment. For ex: Target Server URL: pfhlbdmssrs03/reportserver/project/ for "Prod" 
    
    if ($Environment -eq 'PROD') {
        $TargetSqlServer = 'Production' 
    }elseif ($Environment -eq 'DEV'){
        $TargetSqlServer= 'Debug'
    }elseif ($Environment -eq 'TEST'){
        $TargetSqlServer= 'Test'
    }elseif ($Environment -eq 'UAT'){
        $TargetSqlServer= 'UAT'
    }
    
    # Deploy provided solution
    
    echo "`n============= Building and Deploying Reports ==========`n"
    $output =""
    try { 
        devenv.com $solutionpath /deploy "$TargetSqlServer"
    
        $output = devenv.com $solutionpath /deploy "$TargetSqlServer"| out-string

        $logFile = "$svnLocalPath\LOG_$timestamp.txt"
        $logFile = $logFile.ToUpper();
        Echo "`nPlease check the file $logFile for the detailed log of the build..."
        $output | out-file "$logFile"
        $errorLog = Get-Content "$logFile" | select -Last 4

    }catch{
        $ErrorActionPreference ="STOP"
        
        write-error "ERROR: Deploy Failed. Couldn't build/deploy using devenv.exe."
    }
      
    
    $lastLine = $errorLog | select -last 2|select -first 1
    $fileNotFound = $errorLog | select -first 1
             
    # If the deploy fails: file(s) not found or configurations not set properly
   
            
    if ($fileNotFound -like '*Could*not*find*file*' -and $lastLine -like '*loy: 0 s*'){
        Write-Error "File(s) couldn't be found for the solution to be deployed: $fileNotFound"
    }
    elseif ($lastLine -like '*loy: 0 s*'){
        Write-Error "Check to see if the configurations have been set properly for the solution. Currently set to deploy in $targetsqlserver configuration."
    }elseif($lastLine -like '*loy*1*s*'){
        Write-host "Sucessfully deployed $solutionName in $targetsqlserver configuration!" -ForegroundColor Green
    } 
        
        
    

    