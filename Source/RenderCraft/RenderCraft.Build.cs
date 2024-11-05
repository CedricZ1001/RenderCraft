// Copyright Epic Games, Inc. All Rights Reserved.

using UnrealBuildTool;

public class RenderCraft : ModuleRules
{
	public RenderCraft(ReadOnlyTargetRules Target) : base(Target)
	{
		PCHUsage = PCHUsageMode.UseExplicitOrSharedPCHs;

		PublicDependencyModuleNames.AddRange(new string[] { "Core", "CoreUObject", "Engine", "InputCore", "EnhancedInput" });
	}
}
