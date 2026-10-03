package name.depths;

import net.fabricmc.api.ModInitializer;
import net.fabricmc.fabric.api.biome.v1.BiomeModifications;
import net.fabricmc.fabric.api.biome.v1.BiomeSelectors;
import net.minecraft.core.registries.Registries;
import net.minecraft.resources.ResourceKey;
import net.minecraft.resources.Identifier; // Replaced ResourceLocation
import net.minecraft.world.level.levelgen.GenerationStep;

public class TheDepths implements ModInitializer {
	@Override
	public void onInitialize() {
		BiomeModifications.addFeature(
				BiomeSelectors.all(),
				GenerationStep.Decoration.UNDERGROUND_DECORATION,
				ResourceKey.create(
						Registries.PLACED_FEATURE,
						Identifier.fromNamespaceAndPath("thedepths", "air_ore_placed") // Replaced ResourceLocation
				)
		);
	}
}