#!/bin/bash

ProjectDir=$(pwd)"/project"
TempDir=$(pwd)"/temp_temp_temp_temp_temp_temp_temp_temp_temp_temp_temp_temp_temp_temp_temp_temp_temp_temp_temp_temp"

rm -rf $ProjectDir
rm -rf $TempDir

mkdir $ProjectDir
mkdir $TempDir

export TMPDIR=$TempDir

pushd $ProjectDir
dotnet new xunit
dotnet build
popd

ps aux | grep dotnet