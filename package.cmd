@echo off

.nuget\NuGet.exe pack octicons.nuspec
.nuget\NuGet.exe pack octicons.less.nuspec

IF "%1" == "-deploy" (
  .nuget\NuGet.exe push octicons.*.nupkg
)