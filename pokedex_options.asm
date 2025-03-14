; using 'Increase Pokémon sprite animation size'?
; https://github.com/pret/pokecrystal/wiki/Increase-Pok%C3%A9mon-sprite-animation-size
DEF USING_INCREASED_SPRITE_ANIMATION EQU TRUE


; using 'Expand tilesets from 192 to 255 tiles'?
; https://github.com/pret/pokecrystal/wiki/Expand-tilesets-from-192-to-255-tiles
DEF USING_EXPANDED_TILESETS EQU FALSE
; NOTE if yes, make sure the math symbols, and feet & inches symbols are aligned with your charmap!
	; see 'engine\pokedex\pokedex.asm' Pokedex_InvertTiles and Pokedex_LoadInversedFont


; Use Rangi's Gen3 Type GFX imported from Polished Crystal?
DEF USE_GEN3_STYLE_TYPE_GFX EQU TRUE
	; if FALSE, use 3-letter shorthand for Types
	; see 'engine\pokedex\pokedex2.asm'


; Swap Dark and Ghost?
; some people dont want to use Physical Special Split, but want Dark to be Physical and Ghost to be Special
; ensure they are swapped everywhere else they need to be, this JUST swaps them in the Pokedex
DEF SWAP_DARK_GHOST_TYPES EQU FALSE


; Absolutely no room to have uncompressed PokedexGFX (PokedexLZ) (gfx/pokedex/pokedex.2bpp)?
; or Pokedex Slowpoke Search GFX (PokedexSlowpokeLZ)(gfx/pokedex/slowpoke.2bpp)?
DEF USE_COMPRESSED_POKEDEX_GFX EQU FALSE
	; just be aware that using compression will cause ugly white flashes during some screen transitions in the Pokedex


; Using StatEXP or EVs?
	; use 'IF DEF(MON_STAT_EXP)' to check

; Using custom Field Moves?
; or have added new Field Moves?
; or have removed vanilla Field Moves?
	; see 'engine\pokedex\pokedex_moves_page.asm' Field_Moves_List and Field_Moves_Methods_List

; Using custom Gender Ratios?
	; see 'engine\pokedex\pokedex_stats_page.asm' Pokedex_Get_GenderRatio

; Using custom Evolution Methods?
	; NOT CURRENTLY SUPPORTED (but maybe in the future)
	; see 'engine\pokedex\pokedex_evolution_page.asm'

; Using 'Evolution Moves'?
; https://github.com/pret/pokecrystal/wiki/Evolution-moves
	; NOT CURRENTLY SUPPORTED (but maybe in the future)
	; shouldn't conflict, but the Pokedex will not show Evolution moves

; Using 'Improving the Swarm System'?
; https://github.com/pret/pokecrystal/wiki/Improving-the-Swarm-System
	; NOT CURRENTLY SUPPORTED (but maybe in the future)
	; shouldn't conflict, but newly added surfing swarms wont be seen by the Pokedex

; Using 4th Time of Day / Evening?
	; NOT CURRENTLY SUPPORTED
	; should still display the vanilla time of days just fine?

; Currently does not support anything that changes the wild data structure
	; using 'Make wild Pokémon encounter levels vary'?
	; (https://github.com/pret/pokecrystal/wiki/Make-wild-Pok%C3%A9mon-encounter-levels-vary)
	; NOT COMPATIBLE, WILL CRASH, NO PLANS TO SUPPORT IN FUTURE

; however the Pokedex does natively support:
	; new Maps, (be sure to add a map name in data\maps\map_names.asm)
	; new fishing groups, (don't forget to add a fishing group name)
	; new headbutt tree encounters,
	; new rocksmash group encounters
	; new/custom Pokemon
	; new/custom Moves
	; new/custom Items
; does not currently support additional fishing rods

; Branches:
	; rgbasm 8.0
	; newbox (no expansion with Pokecrystal16)
	; rgbasm 6.1
	; rgbasm 5.2 / Crystal Legacy

; Pokecrystal16 Branches:
	; newbox (Expanded Mons/Moves)
	; item-newbox (Expanded Mons/Moves/Items)
		; WARNING: expanded Items is still very unstable, expect bugs!


; FAQ:
; (HINT: almost all problems will be avoided if you build your ROM hack on top of one of my Dex's branches)
; be sure to double check pre-requisites if you are attempting to merge manually instead of using as a base
