// Copyright Epic Games, Inc. All Rights Reserved.

#include "RenderCraftGameMode.h"
#include "RenderCraftCharacter.h"
#include "UObject/ConstructorHelpers.h"

ARenderCraftGameMode::ARenderCraftGameMode()
{
	// set default pawn class to our Blueprinted character
	static ConstructorHelpers::FClassFinder<APawn> PlayerPawnBPClass(TEXT("/Game/ThirdPerson/Blueprints/BP_ThirdPersonCharacter"));
	if (PlayerPawnBPClass.Class != NULL)
	{
		DefaultPawnClass = PlayerPawnBPClass.Class;
	}
}
