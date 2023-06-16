$rootPath = "C:\Users\gurms\IdeaProjects\Online_Assessment_Tool_Front\online_assessment_tool_front"

# Create directories if they don't exist
$directories = @(
    "$rootPath\node_modules",
    "$rootPath\public",
    "$rootPath\src",
    "$rootPath\src\actions",
    "$rootPath\src\components",
    "$rootPath\src\components\Exam",
    "$rootPath\src\components\User",
    "$rootPath\src\components\Admin",
    "$rootPath\src\reducers",
    "$rootPath\src\store",
    "$rootPath\src\types"
)

foreach ($directory in $directories) {
    if (!(Test-Path -Path $directory -PathType Container)) {
        New-Item -ItemType Directory -Force -Path $directory
    }
}

# Create files if they don't exist
$files = @(
    "$rootPath\public\index.html",
    "$rootPath\public\favicon.ico",
    "$rootPath\src\actions\examActions.ts",
    "$rootPath\src\actions\userActions.ts",
    "$rootPath\src\actions\adminActions.ts",
    "$rootPath\src\components\Exam\StartExam.tsx",
    "$rootPath\src\components\Exam\SubmitExam.tsx",
    "$rootPath\src\components\Exam\ExamReport.tsx",
    "$rootPath\src\components\User\Login.tsx",
    "$rootPath\src\components\User\Register.tsx",
    "$rootPath\src\components\User\UserProfile.tsx",
    "$rootPath\src\components\Admin\AddQuestion.tsx",
    "$rootPath\src\components\Admin\RemoveQuestion.tsx",
    "$rootPath\src\components\Admin\ViewReports.tsx",
    "$rootPath\src\reducers\examReducer.ts",
    "$rootPath\src\reducers\userReducer.ts",
    "$rootPath\src\reducers\adminReducer.ts",
    "$rootPath\src\reducers\index.ts",
    "$rootPath\src\store\index.ts",
    "$rootPath\src\App.tsx",
    "$rootPath\src\index.tsx",
    "$rootPath\src\types\examTypes.ts",
    "$rootPath\src\types\userTypes.ts",
    "$rootPath\src\types\adminTypes.ts"
)

foreach ($file in $files) {
    if (!(Test-Path -Path $file -PathType Leaf)) {
        New-Item -ItemType File -Force -Path $file
    }
}
