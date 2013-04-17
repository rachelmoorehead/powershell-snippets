<#

    Commonly Used Snippets

#>

### Text Manipulation ###

# Casing
$GroupName = "test_group_name"
$DisplayName = (Get-Culture).TextInfo.ToTitleCase($GroupName).Replace("_"," ")

### File Manipulation ###

# Importing CSV
$Items = Get-Content "file.csv"
foreach ($Item in $Items){ 
    
    $columns = $Item.Split(',') #Or your delimiter
    $col1 = $columns[0]
    $col2 = $columns[1] # ..etc..

    <# Do Something #> 
    
    }

# Clearing Files for Initialization
if(Test-Path $log){  Remove-Item $log <# Or Rename or Move, etc.. #> }