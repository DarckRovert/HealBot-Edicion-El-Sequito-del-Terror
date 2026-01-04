-- ═════════════════════════════════════════════════════════════════════════
-- HealBot - Botón Flotante
-- Creado por DarckRovert (Elnazzareno)
-- El Séquito del Terror
-- ═════════════════════════════════════════════════════════════════════════

-- Variables globales
HealBot_FloatingButtonConfig = {
    visible = true,
    locked = false,
    posX = 0,
    posY = 200
};

-- Función de carga
function HealBot_FloatingButton_OnLoad(this)
    this:RegisterForDrag("LeftButton");
    this:RegisterForClicks("LeftButtonUp");
    
    -- Configurar el backdrop con colores hermosos
    this:SetBackdropColor(0.05, 0.0, 0.1, 0.95);  -- Fondo morado muy oscuro
    this:SetBackdropBorderColor(0.5, 0.1, 0.7, 1.0);  -- Borde morado brillante
    
    -- Aplicar color morado brillante al icono principal
    local icon = getglobal(this:GetName() .. "_Icon");
    if icon then
        icon:SetVertexColor(0.95, 0.4, 1.0);  -- Morado brillante
    end
    
    -- Configurar el brillo del marco
    local shine = getglobal(this:GetName() .. "_Shine");
    if shine then
        shine:SetVertexColor(0.6, 0.0, 0.9, 0.8);  -- Brillo morado
    end
    
    -- Configurar la sombra
    local shadow = getglobal(this:GetName() .. "_Shadow");
    if shadow then
        shadow:SetVertexColor(0.0, 0.0, 0.0, 0.5);  -- Sombra negra
    end
    
    -- Cargar posición guardada
    if HealBot_Config and HealBot_Config.FloatingButton then
        HealBot_FloatingButtonConfig = HealBot_Config.FloatingButton;
        
        if HealBot_FloatingButtonConfig.posX and HealBot_FloatingButtonConfig.posY then
            this:ClearAllPoints();
            this:SetPoint("CENTER", UIParent, "CENTER", HealBot_FloatingButtonConfig.posX, HealBot_FloatingButtonConfig.posY);
        end
        
        if not HealBot_FloatingButtonConfig.visible then
            this:Hide();
        end
    end
end

-- Función de clic
function HealBot_FloatingButton_OnClick(this)
    if arg1 == "LeftButton" then
        -- Abrir opciones
        HealBot_TogglePanel(HealBot_Options);
    end
end

-- Tooltip al pasar el ratón
function HealBot_FloatingButton_OnEnter(this)
    -- Efecto de brillo intenso al pasar el ratón
    local icon = getglobal(this:GetName() .. "_Icon");
    if icon then
        icon:SetVertexColor(1.0, 0.6, 1.0);  -- Más brillante al hover
    end
    
    local shine = getglobal(this:GetName() .. "_Shine");
    if shine then
        shine:SetVertexColor(0.9, 0.3, 1.0, 1.0);  -- Brillo más intenso
    end
    
    -- Borde más brillante
    this:SetBackdropBorderColor(0.8, 0.3, 1.0, 1.0);
    
    GameTooltip:SetOwner(this, "ANCHOR_RIGHT");
    GameTooltip:SetText("HealBot - El Séquito del Terror", 0.9, 0.3, 1.0);  -- Título morado
    GameTooltip:AddLine("Clic: Abrir Opciones", 1, 1, 1);
    GameTooltip:AddLine("Arrastrar: Mover botón", 0.8, 0.8, 0.8);
    GameTooltip:AddLine(" ", 1, 1, 1);
    GameTooltip:AddLine("Versión " .. HEALBOT_VERSION, 0.5, 1, 0.5);
    GameTooltip:Show();
end

function HealBot_FloatingButton_OnLeave(this)
    -- Restaurar colores normales
    local icon = getglobal(this:GetName() .. "_Icon");
    if icon then
        icon:SetVertexColor(0.95, 0.4, 1.0);  -- Volver al color morado normal
    end
    
    local shine = getglobal(this:GetName() .. "_Shine");
    if shine then
        shine:SetVertexColor(0.6, 0.0, 0.9, 0.8);  -- Brillo normal
    end
    
    -- Borde normal
    this:SetBackdropBorderColor(0.5, 0.1, 0.7, 1.0);
    
    GameTooltip:Hide();
end

-- Funciones de arrastre
function HealBot_FloatingButton_OnMouseDown(this)
    if not HealBot_FloatingButtonConfig.locked then
        this:SetAlpha(0.7);
        -- Efecto de presión: icono más oscuro
        local icon = getglobal(this:GetName() .. "_Icon");
        if icon then
            icon:SetVertexColor(0.6, 0.2, 0.7);
        end
    end
end

function HealBot_FloatingButton_OnMouseUp(this)
    this:SetAlpha(1.0);
    -- Restaurar color del icono
    local icon = getglobal(this:GetName() .. "_Icon");
    if icon then
        icon:SetVertexColor(0.95, 0.4, 1.0);
    end
end

function HealBot_FloatingButton_OnDragStart(this)
    if not HealBot_FloatingButtonConfig.locked then
        this:StartMoving();
    end
end

function HealBot_FloatingButton_OnDragStop(this)
    this:StopMovingOrSizing();
    
    -- Guardar posición
    local point, relativeTo, relativePoint, xOfs, yOfs = this:GetPoint();
    HealBot_FloatingButtonConfig.posX = xOfs;
    HealBot_FloatingButtonConfig.posY = yOfs;
    
    if HealBot_Config then
        HealBot_Config.FloatingButton = HealBot_FloatingButtonConfig;
    end
end

-- Nota: El menú contextual fue eliminado porque EasyMenu no existe en WoW 1.12
-- Usa los comandos /hb para controlar el botón:
-- /hb button - Mostrar/ocultar
-- /hb button lock/unlock - Bloquear/desbloquear
-- /hb lang - Cambiar idioma

-- Comandos para controlar el botón
function HealBot_FloatingButton_Command(cmd)
    if cmd == "show" then
        HealBot_FloatingButton:Show();
        HealBot_FloatingButtonConfig.visible = true;
        if HealBot_Config then
            HealBot_Config.FloatingButton = HealBot_FloatingButtonConfig;
        end
        DEFAULT_CHAT_FRAME:AddMessage("HealBot: Botón mostrado", 0.5, 1, 0.5);
    elseif cmd == "hide" then
        HealBot_FloatingButton:Hide();
        HealBot_FloatingButtonConfig.visible = false;
        if HealBot_Config then
            HealBot_Config.FloatingButton = HealBot_FloatingButtonConfig;
        end
        DEFAULT_CHAT_FRAME:AddMessage("HealBot: Botón oculto", 1, 1, 0.5);
    elseif cmd == "toggle" then
        if HealBot_FloatingButton:IsVisible() then
            HealBot_FloatingButton_Command("hide");
        else
            HealBot_FloatingButton_Command("show");
        end
    elseif cmd == "lock" then
        HealBot_FloatingButtonConfig.locked = true;
        if HealBot_Config then
            HealBot_Config.FloatingButton = HealBot_FloatingButtonConfig;
        end
        DEFAULT_CHAT_FRAME:AddMessage("HealBot: Botón bloqueado", 0.5, 1, 0.5);
    elseif cmd == "unlock" then
        HealBot_FloatingButtonConfig.locked = false;
        if HealBot_Config then
            HealBot_Config.FloatingButton = HealBot_FloatingButtonConfig;
        end
        DEFAULT_CHAT_FRAME:AddMessage("HealBot: Botón desbloqueado", 1, 1, 0.5);
    elseif cmd == "reset" then
        HealBot_FloatingButton:ClearAllPoints();
        HealBot_FloatingButton:SetPoint("CENTER", UIParent, "CENTER", 0, 200);
        HealBot_FloatingButtonConfig.posX = 0;
        HealBot_FloatingButtonConfig.posY = 200;
        HealBot_FloatingButtonConfig.locked = false;
        if HealBot_Config then
            HealBot_Config.FloatingButton = HealBot_FloatingButtonConfig;
        end
        DEFAULT_CHAT_FRAME:AddMessage("HealBot: Botón restablecido", 0.5, 1, 0.5);
    else
        DEFAULT_CHAT_FRAME:AddMessage("HealBot Botón Flotante - Comandos:", 0.5, 1, 0.5);
        DEFAULT_CHAT_FRAME:AddMessage("/hb button show - Mostrar botón", 1, 1, 1);
        DEFAULT_CHAT_FRAME:AddMessage("/hb button hide - Ocultar botón", 1, 1, 1);
        DEFAULT_CHAT_FRAME:AddMessage("/hb button toggle - Alternar botón", 1, 1, 1);
        DEFAULT_CHAT_FRAME:AddMessage("/hb button lock - Bloquear botón", 1, 1, 1);
        DEFAULT_CHAT_FRAME:AddMessage("/hb button unlock - Desbloquear botón", 1, 1, 1);
        DEFAULT_CHAT_FRAME:AddMessage("/hb button reset - Restablecer botón", 1, 1, 1);
    end
end
