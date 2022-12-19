BeforeAll {

}


Describe "Get-SQLBitsTrainingDay" {

    Context "When the function is called" {
        Mock -ModuleName SQLBitsPS Invoke-RestMethod { return 
            [PSCustomObject]@{
               rooms = 'dummyRooms'
           }
       }
        It "Should return a psobject" {
            $result = Get-SQLBitsTrainingDay -Output object
            $result | Should -BeOfType System.Management.Automation.PSObject
        }

    }
}