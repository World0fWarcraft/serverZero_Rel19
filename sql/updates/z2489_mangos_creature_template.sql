ALTER TABLE db_version CHANGE COLUMN required_z2481_mangos_spell_proc_event required_z2489_mangos_creature_template bit;

RENAME TABLE creature_template TO creature_template_old;
CREATE TABLE `creature_template` (
  `Entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Name` char(100) NOT NULL DEFAULT '',
  `SubName` char(100) DEFAULT NULL,
  `MinLevel` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `MaxLevel` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ModelId1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ModelId2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `FactionAlliance` smallint(5) unsigned NOT NULL DEFAULT '0',
  `FactionHorde` smallint(5) unsigned NOT NULL DEFAULT '0',
  `Scale` float NOT NULL DEFAULT '1',
  `Family` tinyint(4) NOT NULL DEFAULT '0',
  `CreatureType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `InhabitType` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `RegenerateHealth` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `RacialLeader` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `NpcFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `UnitFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `DynamicFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `ExtraFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `CreatureTypeFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `SpeedWalk` float NOT NULL DEFAULT '1',
  `SpeedRun` float NOT NULL DEFAULT '1.14286',
  `UnitClass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `HealthMultiplier` float NOT NULL DEFAULT '1',
  `ManaMultiplier` float NOT NULL DEFAULT '1', -- NEW FIELD ADDED
  `DamageMultiplier` float NOT NULL DEFAULT '1',
  `DamageVariance` float NOT NULL DEFAULT '1', -- NEW FIELD ADDED
  `ArmorMultiplier` float NOT NULL DEFAULT '1', -- NEW FIELD ADDED
  `ExperienceMultiplier` float NOT NULL DEFAULT '1', -- NEW FIELD ADDED
  `MinLevelHealth` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxLevelHealth` int(10) unsigned NOT NULL DEFAULT '0',
  `MinLevelMana` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxLevelMana` int(10) unsigned NOT NULL DEFAULT '0',
  `MinMeleeDmg` float NOT NULL DEFAULT '0',
  `MaxMeleeDmg` float NOT NULL DEFAULT '0',
  `MinRangedDmg` float NOT NULL DEFAULT '0',
  `MaxRangedDmg` float NOT NULL DEFAULT '0',
  `Armor` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `MeleeAttackPower` int(10) unsigned NOT NULL DEFAULT '0',
  `RangedAttackPower` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MeleeBaseAttackTime` int(10) unsigned NOT NULL DEFAULT '2000',
  `RangedBaseAttackTime` int(10) unsigned NOT NULL DEFAULT '2000',
  `DamageSchool` tinyint(4) NOT NULL DEFAULT '0',
  `MinLootGold` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `MaxLootGold` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `LootId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `PickpocketLootId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `SkinningLootId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `KillCredit1` int(11) unsigned NOT NULL DEFAULT '0',
  `KillCredit2` int(11) unsigned NOT NULL DEFAULT '0',
  `MechanicImmuneMask` int(10) unsigned NOT NULL DEFAULT '0',
  `ResistanceHoly` smallint(5) NOT NULL DEFAULT '0',
  `ResistanceFire` smallint(5) NOT NULL DEFAULT '0',
  `ResistanceNature` smallint(5) NOT NULL DEFAULT '0',
  `ResistanceFrost` smallint(5) NOT NULL DEFAULT '0',
  `ResistanceShadow` smallint(5) NOT NULL DEFAULT '0',
  `ResistanceArcane` smallint(5) NOT NULL DEFAULT '0',
  `PetSpellDataId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `MovementType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TrainerType` tinyint(4) NOT NULL DEFAULT '0',
  `TrainerSpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `TrainerClass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TrainerRace` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `TrainerTemplateId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `VendorTemplateId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `GossipMenuId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `EquipmentTemplateId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Civilian` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AIName` char(64) NOT NULL DEFAULT '',
  `ScriptName` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';

INSERT INTO `creature_template` (`Entry`, `KillCredit1`, `KillCredit2`, `ModelId1`, `ModelId2`, `Name`, `SubName`, `GossipMenuId`, `MinLevel`, `MaxLevel`, `MinLevelHealth`, `MaxLevelHealth`,
  `MinLevelMana`, `MaxLevelMana`, `Armor`, `FactionAlliance`, `FactionHorde`, `NpcFlags`, `SpeedWalk`, `SpeedRun`, `Scale`, `Rank`, `MinMeleeDmg`, `MaxMeleeDmg`, `DamageSchool`, `MeleeAttackPower`, `DamageMultiplier`,
  `MeleeBaseAttackTime`, `RangedBaseAttackTime`, `UnitClass`, `UnitFlags`, `DynamicFlags`, `Family`, `TrainerType`, `TrainerSpell`, `TrainerClass`, `TrainerRace`, `MinRangedDmg`, `MaxRangedDmg`, `RangedAttackPower`,
  `CreatureType`, `CreatureTypeFlags`, `LootId`, `PickPocketLootId`, `SkinningLootId`, `ResistanceHoly`, `ResistanceFire`,`ResistanceNature`, `ResistanceFrost`, `ResistanceShadow`, `ResistanceArcane`,
  `PetSpellDataId`, `MinLootGold`, `MaxLootGold`, `AIName`, `MovementType`, `InhabitType`, `RacialLeader`, `RegenerateHealth`, `EquipmentTemplateId`, `TrainerTemplateId`,
  `VendorTemplateId`, `MechanicImmuneMask`, `ExtraFlags`, `ScriptName`, `Civilian`)
SELECT `entry`,`KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`,
  `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`,
  `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`,
  `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`,
  `PetSpellDataId`, `mingold`, `maxgold`, COALESCE(`AIName`,'') AS AIName, `MovementType`, `InhabitType`, `RacialLeader`, `RegenHealth`, `equipment_id`,`trainer_id`,
  `vendor_id`, `mechanic_immune_mask`,`flags_extra`, COALESCE(`ScriptName`,'') AS Scriptname, `Civilian`
FROM `creature_template_old` ORDER BY `entry`;

DROP TABLE `creature_template_old`;