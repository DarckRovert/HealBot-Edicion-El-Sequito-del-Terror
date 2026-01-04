-- ═════════════════════════════════════════════════════════════════════════
-- HealBot - Colores Personalizados
-- El Séquito del Terror
-- Creado por DarckRovert (Elnazzareno)
-- ═════════════════════════════════════════════════════════════════════════

-- Paleta de colores temática El Séquito del Terror
HEALBOT_CUSTOM_COLORS = {
    -- Colores principales
    PRIMARY_DARK = {r = 0.08, g = 0, b = 0.15},      -- Morado muy oscuro
    PRIMARY_MEDIUM = {r = 0.3, g = 0, b = 0.5},     -- Morado medio
    PRIMARY_BRIGHT = {r = 0.6, g = 0.2, b = 0.8},   -- Morado brillante
    PRIMARY_GLOW = {r = 0.9, g = 0.3, b = 1.0},     -- Morado resplandeciente
    
    -- Colores de salud (gradiente mejorado)
    HEALTH_FULL = {r = 0.2, g = 0.8, b = 0.3},      -- Verde brillante
    HEALTH_HIGH = {r = 0.5, g = 0.9, b = 0.2},      -- Verde-amarillo
    HEALTH_MEDIUM = {r = 0.9, g = 0.7, b = 0.1},    -- Amarillo-naranja
    HEALTH_LOW = {r = 0.95, g = 0.4, b = 0.1},      -- Naranja
    HEALTH_CRITICAL = {r = 1.0, g = 0.1, b = 0.1},  -- Rojo intenso
    
    -- Colores de maná
    MANA = {r = 0.3, g = 0.5, b = 1.0},             -- Azul brillante
    MANA_LOW = {r = 0.5, g = 0.3, b = 0.8},         -- Morado (sin maná)
    
    -- Colores de debuffs
    DEBUFF_MAGIC = {r = 0.4, g = 0.6, b = 1.0},     -- Azul
    DEBUFF_CURSE = {r = 0.8, g = 0.2, b = 0.8},     -- Morado
    DEBUFF_DISEASE = {r = 0.6, g = 0.4, b = 0.0},   -- Marrón
    DEBUFF_POISON = {r = 0.2, g = 0.8, b = 0.2},    -- Verde
    
    -- Colores de fondo
    BACKGROUND = {r = 0.1, g = 0.1, b = 0.1, a = 0.8},
    BORDER = {r = 0.5, g = 0.1, b = 0.7, a = 1.0},
};

-- Función para aplicar colores personalizados
function HealBot_ApplyCustomColors()
    -- Esta función se puede expandir para aplicar colores a las barras
    -- Por ahora solo define la paleta para uso futuro
end

-- Función helper para obtener color de salud basado en porcentaje
function HealBot_GetHealthColor(healthPct)
    local c = HEALBOT_CUSTOM_COLORS;
    
    if healthPct >= 0.9 then
        return c.HEALTH_FULL.r, c.HEALTH_FULL.g, c.HEALTH_FULL.b;
    elseif healthPct >= 0.6 then
        return c.HEALTH_HIGH.r, c.HEALTH_HIGH.g, c.HEALTH_HIGH.b;
    elseif healthPct >= 0.4 then
        return c.HEALTH_MEDIUM.r, c.HEALTH_MEDIUM.g, c.HEALTH_MEDIUM.b;
    elseif healthPct >= 0.2 then
        return c.HEALTH_LOW.r, c.HEALTH_LOW.g, c.HEALTH_LOW.b;
    else
        return c.HEALTH_CRITICAL.r, c.HEALTH_CRITICAL.g, c.HEALTH_CRITICAL.b;
    end
end
