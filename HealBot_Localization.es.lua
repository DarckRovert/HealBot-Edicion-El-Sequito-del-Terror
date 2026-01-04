-- ═════════════════════════════════════════════════════════════════════════
-- HealBot - Edición El Séquito del Terror
-- Traducción al Español
-- Version 2.0
-- ═════════════════════════════════════════════════════════════════════════

--------------
-- ESPAÑOL --
--------------

HEALBOT_VERSION = "v2.0 - El Séquito del Terror";

HEALBOT_ADDON = "HealBot " .. HEALBOT_VERSION;
HEALBOT_LOADED = " cargado. Creado por DarckRovert (Elnazzareno) para El Séquito del Terror";

-- Variables de debuff (deben estar en inglés según comentarios del código original)
HEALBOT_DISEASE_en = "Disease";
HEALBOT_MAGIC_en = "Magic";
HEALBOT_POISON_en = "Poison";
HEALBOT_CURSE_en = "Curse";

-- Clases (deben estar en inglés para coincidir con el juego)
HEALBOT_DRUID = "Druid";
HEALBOT_HUNTER = "Hunter";
HEALBOT_MAGE = "Mage";
HEALBOT_PALADIN = "Paladin";
HEALBOT_PRIEST = "Priest";
HEALBOT_ROGUE = "Rogue";
HEALBOT_SHAMAN = "Shaman";
HEALBOT_WARLOCK = "Warlock";
HEALBOT_WARRIOR = "Warrior";

HEALBOT_BANDAGES = "Bandages";

HEALBOT_LINEN_BANDAGE     = "Linen Bandage";
HEALBOT_WOOL_BANDAGE      = "Wool Bandage";
HEALBOT_SILK_BANDAGE      = "Silk Bandage";
HEALBOT_MAGEWEAVE_BANDAGE = "Mageweave Bandage";
HEALBOT_RUNECLOTH_BANDAGE = "Runecloth Bandage";

HEALBOT_HEAVY_LINEN_BANDAGE     = "Heavy Linen Bandage";
HEALBOT_HEAVY_WOOL_BANDAGE      = "Heavy Wool Bandage";
HEALBOT_HEAVY_SILK_BANDAGE      = "Heavy Silk Bandage";
HEALBOT_HEAVY_MAGEWEAVE_BANDAGE = "Heavy Mageweave Bandage";
HEALBOT_HEAVY_RUNECLOTH_BANDAGE = "Heavy Runecloth Bandage";

HEALBOT_HEALING_POTIONS         = "Healing Potions";

HEALBOT_MINOR_HEALING_POTION    = "Minor Healing Potion";
HEALBOT_LESSER_HEALING_POTION   = "Lesser Healing Potion";
HEALBOT_HEALING_POTION          = "Healing Potion";
HEALBOT_GREATER_HEALING_POTION  = "Greater Healing Potion";
HEALBOT_SUPERIOR_HEALING_POTION = "Superior Healing Potion";
HEALBOT_MAJOR_HEALING_POTION    = "Major Healing Potion";

HEALBOT_HEALTHSTONES         = "Healthstones";

HEALBOT_MINOR_HEALTHSTONE    = "Minor Healthstone";
HEALBOT_LESSER_HEALTHSTONE   = "Lesser Healthstone";
HEALBOT_HEALTHSTONE          = "Healthstone";
HEALBOT_GREATER_HEALTHSTONE  = "Greater Healthstone";
HEALBOT_MAJOR_HEALTHSTONE    = "Major Healthstone";

HEALBOT_FLASH_HEAL          = "Flash Heal";
HEALBOT_FLASH_OF_LIGHT      = "Flash of Light";
HEALBOT_HOLY_SHOCK          = "Holy Shock";
HEALBOT_GREATER_HEAL        = "Greater Heal";
HEALBOT_HEALING_TOUCH       = "Healing Touch";
HEALBOT_HEAL                = "Heal";
HEALBOT_HEALING_WAVE        = "Healing Wave";
HEALBOT_HOLY_LIGHT          = "Holy Light";
HEALBOT_LESSER_HEAL         = "Lesser Heal";
HEALBOT_LESSER_HEALING_WAVE = "Lesser Healing Wave";
HEALBOT_MEND_PET            = "Mend Pet";
HEALBOT_POWER_WORD_SHIELD   = "Power Word: Shield";
HEALBOT_REGROWTH            = "Regrowth";
HEALBOT_RENEW               = "Renew";
HEALBOT_REJUVENATION        = "Rejuvenation";
HEALBOT_PRAYER_OF_HEALING   = "Prayer of Healing";
HEALBOT_CHAIN_HEAL          = "Chain Heal";

HEALBOT_POWER_WORD_FORTITUDE  = "Power Word: Fortitude";
HEALBOT_DIVINE_SPIRIT         = "Divine Spirit";
HEALBOT_MARK_OF_THE_WILD      = "Mark of the Wild";
HEALBOT_THORNS                = "Thorns";
HEALBOT_BLESSING_OF_SALVATION = "Blessing of Salvation";

HEALBOT_RESURRECTION       = "Resurrection";
HEALBOT_REDEMPTION         = "Redemption";
HEALBOT_REBIRTH            = "Rebirth";
HEALBOT_ANCESTRALSPIRIT    = "Ancestral Spirit";

HEALBOT_PURIFY             = "Purify";
HEALBOT_CLEANSE            = "Cleanse";
HEALBOT_CURE_POISON        = "Cure Poison";
HEALBOT_REMOVE_CURSE       = "Remove Curse";
HEALBOT_ABOLISH_POISON     = "Abolish Poison";
HEALBOT_CURE_DISEASE       = "Cure Disease";
HEALBOT_ABOLISH_DISEASE    = "Abolish Disease";
HEALBOT_DISPEL_MAGIC       = "Dispel Magic";
HEALBOT_DISEASE            = "Disease";
HEALBOT_MAGIC              = "Magic";
HEALBOT_CURSE              = "Curse";
HEALBOT_POISON             = "Poison";

HEALBOT_RANK_1              = "(Rank 1)";
HEALBOT_RANK_2              = "(Rank 2)";
HEALBOT_RANK_3              = "(Rank 3)";
HEALBOT_RANK_4              = "(Rank 4)";
HEALBOT_RANK_5              = "(Rank 5)";
HEALBOT_RANK_6              = "(Rank 6)";
HEALBOT_RANK_7              = "(Rank 7)";
HEALBOT_RANK_8              = "(Rank 8)";
HEALBOT_RANK_9              = "(Rank 9)";
HEALBOT_RANK_10             = "(Rank 10)";
HEALBOT_RANK_11             = "(Rank 11)";

HEALBOT_LIBRARY_INCHEAL    = "Increases healing done by spells and effects by up to (%d+)%.";
HEALBOT_LIBRARY_INCDAMHEAL = "Increases damage and healing done by magical spells and effects by up to (%d+)%.";

HB_BONUSSCANNER_NAMES = {	HEAL = "Healing", };
HB_BONUSSCANNER_PREFIX_EQUIP = "Equip: ";
HB_BONUSSCANNER_PREFIX_SET = "Set: ";
HB_BONUSSCANNER_PATTERNS_PASSIVE = { { pattern = "Increases healing done by spells and effects by up to (%d+)%.", effect = "HEAL" }, { pattern = "Increases damage and healing done by magical spells and effects by up to (%d+)%.", effect = {"HEAL", "DMG"} }, };
HB_BONUSSCANNER_PATTERNS_GENERIC_LOOKUP = { ["Healing Spells"] = "HEAL", ["Increases Healing"] = "HEAL", ["Healing and Spell Damage"] = {"HEAL", "DMG"}, ["Damage and Healing Spells"] = {"HEAL", "DMG"}, ["Spell Damage and Healing"] = {"HEAL", "DMG"}, };
HB_BONUSSCANNER_PATTERNS_OTHER = { { pattern = "Zandalar Signet of Mojo", effect = {"DMG", "HEAL"}, value = 18 }, { pattern = "Zandalar Signet of Serenity", effect = "HEAL", value = 33 }, { pattern = "Minor Wizard Oil", effect = {"DMG", "HEAL"}, value = 8 }, { pattern = "Lesser Wizard Oil", effect = {"DMG", "HEAL"}, value = 16 }, { pattern = "Wizard Oil", effect = {"DMG", "HEAL"}, value = 24 }, { pattern = "Brilliant Wizard Oil", effect = {"DMG", "HEAL", "SPELLCRIT"}, value = {36, 36, 1} }, { pattern = "Brilliant Mana Oil", effect = { "MANAREG", "HEAL"}, value = {12, 25} }, };

HEALBOT_BUFF_FIRST_AID           = "Interface\\Icons\\Spell_Holy_Heal";
HEALBOT_BUFF_POWER_WORD_SHIELD   = "Interface\\Icons\\Spell_Holy_PowerWordShield";
HEALBOT_BUFF_REJUVENATION        = "Interface\\Icons\\Spell_Nature_Rejuvenation";
HEALBOT_BUFF_REGROWTH            = "Interface\\Icons\\Spell_Nature_ResistNature";
HEALBOT_BUFF_RENEW               = "Interface\\Icons\\Spell_Holy_Renew";
HEALBOT_DEBUFF_WEAKENED_SOUL     = "Interface\\Icons\\Spell_Holy_AshesToAshes";
HEALBOT_DEBUFF_RECENTLY_BANDAGED = "Interface\\Icons\\INV_Misc_Bandage_08";

HB_SPELL_PATTERN_LESSER_HEAL         = "Heal your target for (%d+) to (%d+)";
HB_SPELL_PATTERN_HEAL                = "Heal your target for (%d+) to (%d+)";
HB_SPELL_PATTERN_GREATER_HEAL        = "A slow casting spell that heals a single target for (%d+) to (%d+)";
HB_SPELL_PATTERN_FLASH_HEAL          = "Heals a friendly target for (%d+) to (%d+)";
HB_SPELL_PATTERN_RENEW               = "Heals the target of (%d+) to (%d+) damage over (%d+) sec";
HB_SPELL_PATTERN_RENEW1              = "Heals the target of (%d+) damage over (%d+) sec";
HB_SPELL_PATTERN_RENEW2              = "Not needed for en";
HB_SPELL_PATTERN_RENEW3              = "Not needed for en";
HB_SPELL_PATTERN_SHIELD              = "absorbing (%d+) damage.  Lasts (%d+) sec.";
HB_SPELL_PATTERN_HEALING_TOUCH       = "Heals a friendly target for (%d+) to (%d+)";
HB_SPELL_PATTERN_REGROWTH            = "Heals a friendly target for (%d+) to (%d+) and another (%d+) over (%d+) sec";
HB_SPELL_PATTERN_REGROWTH1           = "Heals a friendly target for (%d+) to (%d+) and another (%d+) to (%d+) over (%d+) sec";
HB_SPELL_PATTERN_HOLY_LIGHT          = "Heals a friendly target for (%d+) to (%d+)";
HB_SPELL_PATTERN_FLASH_OF_LIGHT      = "Heals a friendly target for (%d+) to (%d+)";
HB_SPELL_PATTERN_HEALING_WAVE        = "Heals a friendly target for (%d+) to (%d+)";
HB_SPELL_PATTERN_LESSER_HEALING_WAVE = "Heals a friendly target for (%d+) to (%d+)";
HB_SPELL_PATTERN_REJUVENATION        = "Heals the target for (%d+) over (%d+) sec";
HB_SPELL_PATTERN_REJUVENATION1       = "Heals the target for (%d+) to (%d+) over (%d+) sec";
HB_SPELL_PATTERN_MEND_PET            = "Heals your pet (%d+) health every second while you focus.  Lasts (%d+) sec";

HB_TOOLTIP_MANA                    = "^(%d+) Mana$";
HB_TOOLTIP_RANGE                   = "(%d+) yd range";
HB_TOOLTIP_INSTANT_CAST            = "Instant cast";
HB_TOOLTIP_CAST_TIME               = "(%d+.?%d*) sec cast";
HB_TOOLTIP_CHANNELED               = "Channeled";
HB_HASLEFTRAID                     = "^([^%s]+) has left the raid group$";
HB_HASLEFTPARTY                    = "^([^%s]+) leaves the party$";
HB_YOULEAVETHEGROUP                = "You leave the group."
HB_YOULEAVETHERAID                 = "You have left the raid group";

HEALBOT_CASTINGSPELLONYOU  = "Lanzando %s sobre ti ...";
HEALBOT_CASTINGSPELLONUNIT = "Lanzando %s sobre %s ...";
HEALBOT_ABORTEDSPELLONUNIT = "... abortado %s sobre %s";

HEALBOT_ACTION_TITLE      = "HealBot - El Séquito del Terror";
HEALBOT_ACTION_OPTIONS    = "Opciones";
HEALBOT_ACTION_ABORT      = "Abortar";

HEALBOT_OPTIONS_TITLE         = "HealBot v2.0 - El Séquito del Terror";
HEALBOT_OPTIONS_DEFAULTS      = "Predeterminado";
HEALBOT_OPTIONS_CLOSE         = "Cerrar";
HEALBOT_OPTIONS_TAB_GENERAL   = "General";
HEALBOT_OPTIONS_TAB_SPELLS    = "Hechizos";
HEALBOT_OPTIONS_TAB_HEALING   = "Sanación";
HEALBOT_OPTIONS_TAB_CDC       = "Curar";
HEALBOT_OPTIONS_TAB_SKIN      = "Apariencia";
HEALBOT_OPTIONS_TAB_TIPS      = "Consejos";

HEALBOT_OPTIONS_PANEL_TEXT    = "Opciones del panel de sanación"
HEALBOT_OPTIONS_BARALPHA      = "Opacidad de barras";
HEALBOT_OPTIONS_BARALPHAINHEAL= "Opacidad de sanaciones entrantes";
HEALBOT_OPTIONS_ACTIONLOCKED  = "Bloquear posición";
HEALBOT_OPTIONS_GROWUPWARDS   = "Crecer hacia arriba";
HEALBOT_OPTIONS_AUTOSHOW      = "Cerrar automáticamente";
HEALBOT_OPTIONS_PANELSOUNDS   = "Reproducir sonido al abrir";
HEALBOT_OPTIONS_HIDEOPTIONS   = "Ocultar botón de opciones";
HEALBOT_OPTIONS_QUALITYRANGE  = "Comprobación exacta de 27 yardas en instancias";
HEALBOT_OPTIONS_TOGGLEALTUSE  = "Alternar tecla Alt";
HEALBOT_OPTIONS_PROTECTPVP    = "Evitar marcado PvP accidental";
HEALBOT_OPTIONS_HEAL_CHATOPT  = "Opciones de Chat";

HEALBOT_OPTIONS_SKINTEXT      = "Usar apariencia"
HEALBOT_SKINS_STD             = "Estándar"
HEALBOT_OPTIONS_SKINTEXTURE   = "Textura"
HEALBOT_OPTIONS_SKINHEIGHT    = "Altura"
HEALBOT_OPTIONS_SKINWIDTH     = "Ancho"
HEALBOT_OPTIONS_SKINNUMCOLS   = "Nº columnas"
HEALBOT_OPTIONS_SKINBRSPACE   = "Espaciado de filas"
HEALBOT_OPTIONS_SKINBCSPACE   = "Espaciado de columnas"
HEALBOT_OPTIONS_EXTRASORT     = "Ordenar barras extra por"
HEALBOT_SORTBY_NAME           = "Nombre"
HEALBOT_SORTBY_CLASS          = "Clase"
HEALBOT_SORTBY_GROUP          = "Grupo"
HEALBOT_SORTBY_MAXHEALTH      = "Salud máxima"
HEALBOT_OPTIONS_DELSKIN       = "Eliminar"
HEALBOT_OPTIONS_NEWSKINTEXT   = "Nueva apariencia"
HEALBOT_OPTIONS_SAVESKIN      = "Guardar"
HEALBOT_OPTIONS_SKINBARS      = "Opciones de barras"
HEALBOT_OPTIONS_SKINPANEL     = "Colores del panel"
HEALBOT_SKIN_ENTEXT           = "Habilitado"
HEALBOT_SKIN_DISTEXT          = "Deshabilitado"
HEALBOT_SKIN_DEBTEXT          = "Debuff"
HEALBOT_SKIN_BACKTEXT         = "Fondo"
HEALBOT_SKIN_BORDERTEXT       = "Borde"
HEALBOT_OPTIONS_HIDEABORT     = "Ocultar botón de abortar"
HEALBOT_OPTIONS_SKINFHEIGHT   = "Tamaño de fuente"
HEALBOT_OPTIONS_ABORTSIZE     = "Tamaño de abortar"
HEALBOT_OPTIONS_BARALPHADIS   = "Opacidad deshabilitado"
HEALBOT_OPTIONS_SHOWHEADERS   = "Mostrar encabezados"

HEALBOT_OPTIONS_ITEMS  = "Objetos";
HEALBOT_OPTIONS_SPELLS = "Hechizos";

HEALBOT_OPTIONS_COMBOCLASS    = "Combinaciones de teclas para";
HEALBOT_OPTIONS_CLICK         = "Clic";
HEALBOT_OPTIONS_SHIFT         = "Mayús+clic:";
HEALBOT_OPTIONS_CTRL          = "Ctrl+clic:";
HEALBOT_OPTIONS_SHIFTCTRL     = "Mayús+Ctrl+clic:";
HEALBOT_OPTIONS_ENABLEHEALTHY = "Habilitar objetivos sin heridas";

HEALBOT_OPTIONS_CASTNOTIFY1   = "Sin mensajes";
HEALBOT_OPTIONS_CASTNOTIFY2   = "Notificar a mí mismo";
HEALBOT_OPTIONS_CASTNOTIFY3   = "Notificar al objetivo";
HEALBOT_OPTIONS_CASTNOTIFY4   = "Notificar al grupo";
HEALBOT_OPTIONS_CASTNOTIFY5   = "Notificar a la banda";
HEALBOT_OPTIONS_TARGETWHISPER = "Susurrar al objetivo al sanar";

HEALBOT_OPTIONS_HEAL_BUTTONS  = "Botones de sanación para:";

HEALBOT_OPTIONS_CDCBUTTONS    = "Botones de curación";
HEALBOT_OPTIONS_CDCLEFT       = "Alt+Izquierda";
HEALBOT_OPTIONS_CDCRIGHT      = "Alt+Derecha";
HEALBOT_OPTIONS_CDCBARS       = "Colores de barra de salud";
HEALBOT_OPTIONS_CDCCLASS      = "Monitorear clases";
HEALBOT_OPTIONS_CDCWARNINGS   = "Advertencias de debuff";
HEALBOT_OPTIONS_CDC           = "Curar/Disipar/Limpiar para";
HEALBOT_OPTIONS_SHOWDEBUFFWARNING = "Mostrar advertencia en debuff";
HEALBOT_OPTIONS_SOUNDDEBUFFWARNING = "Reproducir sonido en debuff";
HEALBOT_OPTIONS_SOUND1        = "Sonido 1"
HEALBOT_OPTIONS_SOUND2        = "Sonido 2"
HEALBOT_OPTIONS_SOUND3        = "Sonido 3"

HEALBOT_OPTIONS_HEAL_BUTTONS  = "Barras de sanación";
HEALBOT_OPTIONS_EMERGFILTER   = "Mostrar barras extra para";

HEALBOT_OPTIONS_GROUPHEALS    = "Grupo";
HEALBOT_OPTIONS_TANKHEALS     = "Tanques principales";
HEALBOT_OPTIONS_TARGETHEALS   = "Objetivos";
HEALBOT_OPTIONS_EMERGENCYHEALS= "Extra";
HEALBOT_OPTIONS_HEALLEVEL     = "Nivel de Sanación";
HEALBOT_OPTIONS_ALERTLEVEL    = "Nivel de Alerta";
HEALBOT_OPTIONS_OVERHEAL      = "Mostrar botón Abortar cuando sobre-sane"
HEALBOT_OPTIONS_SORTHEALTH    = "Salud";
HEALBOT_OPTIONS_SORTPERCENT   = "Porcentaje";
HEALBOT_OPTIONS_SORTSURVIVAL  = "Supervivencia";
HEALBOT_OPTIONS_EMERGFCLASS   = "Configurar clases para";
HEALBOT_OPTIONS_COMBOBUTTON   = "Botón";
HEALBOT_OPTIONS_BUTTONLEFT    = "Izquierdo";
HEALBOT_OPTIONS_BUTTONMIDDLE  = "Medio";
HEALBOT_OPTIONS_BUTTONRIGHT   = "Derecho";
HEALBOT_OPTIONS_BUTTON4       = "Botón4";
HEALBOT_OPTIONS_BUTTON5       = "Botón5";

BINDING_HEADER_HEALBOT  = "HealBot";
BINDING_NAME_TOGGLEMAIN = "Alternar panel principal";
BINDING_NAME_HEALPLAYER = "Sanar jugador";
BINDING_NAME_HEALPET    = "Sanar mascota";
BINDING_NAME_HEALPARTY1 = "Sanar grupo1";
BINDING_NAME_HEALPARTY2 = "Sanar grupo2";
BINDING_NAME_HEALPARTY3 = "Sanar grupo3";
BINDING_NAME_HEALPARTY4 = "Sanar grupo4";
BINDING_NAME_HEALTARGET = "Sanar objetivo";

HEALBOT_OPTIONS_PROFILE    = "Establecer Perfil:";
HEALBOT_OPTIONS_ProfilePvP = "JcJ";
HEALBOT_OPTIONS_ProfilePvE = "JcE";

HEALBOT_CLASSES_ALL     = "Todas las clases";
HEALBOT_CLASSES_MELEE   = "Cuerpo a cuerpo";
HEALBOT_CLASSES_RANGES  = "A distancia";
HEALBOT_CLASSES_HEALERS = "Sanadores";
HEALBOT_CLASSES_CUSTOM  = "Personalizado";

HEALBOT_OPTIONS_SHOWTOOLTIP     = "Mostrar descripciones";
HEALBOT_OPTIONS_SHOWDETTOOLTIP  = "Mostrar información detallada de hechizos";
HEALBOT_OPTIONS_SHOWUNITTOOLTIP = "Mostrar información del objetivo";
HEALBOT_OPTIONS_SHOWRECTOOLTIP  = "Mostrar recomendación de lanzamiento instantáneo";
HEALBOT_TOOLTIP_POSDEFAULT      = "Ubicación predeterminada";
HEALBOT_TOOLTIP_POSLEFT         = "Izquierda de HealBot";
HEALBOT_TOOLTIP_POSRIGHT        = "Derecha de HealBot";
HEALBOT_TOOLTIP_POSABOVE        = "Arriba de HealBot";
HEALBOT_TOOLTIP_POSBELOW        = "Abajo de HealBot";
HEALBOT_TOOLTIP_RECOMMENDTEXT   = "Recomendación de Lanzamiento Instantáneo";
HEALBOT_TOOLTIP_NONE            = "ninguno disponible";
HEALBOT_TOOLTIP_ITEMBONUS       = "Bonificaciones de objetos";
HEALBOT_TOOLTIP_ACTUALBONUS     = "La bonificación real es";
HEALBOT_TOOLTIP_SHIELD          = "Protección";
HEALBOT_WORDS_OVER              = "durante";
HEALBOT_WORDS_SEC               = "seg";
HEALBOT_WORDS_TO                = "a";
HEALBOT_WORDS_CAST              = "Lanzar";
HEALBOT_WORDS_FOR               = "por";

HEALBOT_WORDS_NONE              = "Ninguno";
HEALBOT_OPTIONS_ALT             = "Alt+clic";
HEALBOT_DISABLED_TARGET         = "Objetivo";
HEALBOT_OPTIONS_ENABLEDBARS     = "Barras Habilitadas";
HEALBOT_OPTIONS_DISABLEDBARS    = "Barras Deshabilitadas fuera de combate";
HEALBOT_OPTIONS_SHOWCLASSONBAR  = "Mostrar clase en barra";
HEALBOT_OPTIONS_SHOWHEALTHONBAR = "Mostrar salud en barra";
HEALBOT_OPTIONS_BARHEALTH1      = "como diferencia";
HEALBOT_OPTIONS_BARHEALTH2      = "como porcentaje";
HEALBOT_OPTIONS_TIPTEXT         = "Información de descripción";
HEALBOT_OPTIONS_BARINFOTEXT     = "Información de barra";
HEALBOT_OPTIONS_POSTOOLTIP      = "Posicionar descripción";
HEALBOT_OPTIONS_SHOWCLASSNAME   = "Incluir nombre";
HEALBOT_OPTIONS_BARTEXTCLASSCOLOUR1 = "Mostrar texto en color de clase";
HEALBOT_OPTIONS_BARTEXTCLASSCOLOUR2 = "Anula Habilitado y Debuff en la pestaña de apariencia";
HEALBOT_OPTIONS_EMERGFILTERGROUPS   = "Incluir grupos";

HEALBOT_ONE   = "1";
HEALBOT_TWO   = "2";
HEALBOT_THREE = "3";
HEALBOT_FOUR  = "4";
HEALBOT_FIVE  = "5";
HEALBOT_SIX   = "6";
HEALBOT_SEVEN = "7";
HEALBOT_EIGHT = "8";
