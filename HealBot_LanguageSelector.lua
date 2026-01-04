-- ═════════════════════════════════════════════════════════════════════════
-- HealBot - Selector de Idioma
-- Creado por DarckRovert (Elnazzareno)
-- El Séquito del Terror
-- ═════════════════════════════════════════════════════════════════════════

-- Variables globales
HealBot_Language = {
    current = "auto",
    available = {
        {value = "auto", text = "Auto (Detectar)"},
        {value = "en", text = "English"},
        {value = "es", text = "Español"}
    }
};

-- Traducciones para el selector
local HEALBOT_LANG_STRINGS = {
    en = {
        title = "Language / Idioma",
        current = "Current language:",
        select = "Select language:",
        auto = "Auto (Detect from client)",
        english = "English",
        spanish = "Español",
        restart = "You need to reload the UI for changes to take effect.",
        reload = "Reload UI",
        cancel = "Cancel"
    },
    es = {
        title = "Language / Idioma",
        current = "Idioma actual:",
        select = "Seleccionar idioma:",
        auto = "Auto (Detectar del cliente)",
        english = "English",
        spanish = "Español",
        restart = "Necesitas recargar la interfaz para que los cambios surtan efecto.",
        reload = "Recargar UI",
        cancel = "Cancelar"
    }
};

-- Obtener idioma actual
function HealBot_GetCurrentLanguage()
    if not HealBot_Config then
        return "auto";
    end
    
    if not HealBot_Config.Language then
        HealBot_Config.Language = "auto";
    end
    
    return HealBot_Config.Language;
end

-- Establecer idioma
function HealBot_SetLanguage(lang)
    if not HealBot_Config then
        HealBot_Config = {};
    end
    
    HealBot_Config.Language = lang;
    HealBot_Language.current = lang;
    
    -- Guardar configuración
    if HealBot_Config then
        DEFAULT_CHAT_FRAME:AddMessage("HealBot: Idioma cambiado a " .. lang, 0.5, 1, 0.5);
        DEFAULT_CHAT_FRAME:AddMessage("HealBot: Usa /reload para aplicar los cambios", 1, 1, 0.5);
    end
end

-- Obtener idioma efectivo (considerando auto)
function HealBot_GetEffectiveLanguage()
    local lang = HealBot_GetCurrentLanguage();
    
    if lang == "auto" then
        local locale = GetLocale();
        if locale == "esES" or locale == "esMX" then
            return "es";
        else
            return "en";
        end
    end
    
    return lang;
end

-- Crear frame del selector de idioma
function HealBot_CreateLanguageSelector()
    -- Crear frame principal si no existe
    if HealBot_LanguageFrame then
        return;
    end
    
    local frame = CreateFrame("Frame", "HealBot_LanguageFrame", UIParent);
    frame:SetWidth(300);
    frame:SetHeight(180);
    frame:SetPoint("CENTER", UIParent, "CENTER", 0, 0);
    frame:SetBackdrop({
        bgFile = "Interface\\DialogFrame\\UI-DialogBox-Background",
        edgeFile = "Interface\\DialogFrame\\UI-DialogBox-Border",
        tile = true,
        tileSize = 32,
        edgeSize = 32,
        insets = {left = 11, right = 12, top = 12, bottom = 11}
    });
    frame:SetMovable(true);
    frame:EnableMouse(true);
    frame:RegisterForDrag("LeftButton");
    frame:SetScript("OnDragStart", function() this:StartMoving(); end);
    frame:SetScript("OnDragStop", function() this:StopMovingOrSizing(); end);
    frame:Hide();
    
    -- Título
    local title = frame:CreateFontString(nil, "OVERLAY", "GameFontNormalLarge");
    title:SetPoint("TOP", frame, "TOP", 0, -20);
    title:SetText("Language / Idioma");
    frame.title = title;
    
    -- Texto de idioma actual
    local currentText = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal");
    currentText:SetPoint("TOP", title, "BOTTOM", 0, -15);
    currentText:SetText("Current / Actual:");
    frame.currentText = currentText;
    
    -- Valor de idioma actual
    local currentValue = frame:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
    currentValue:SetPoint("TOP", currentText, "BOTTOM", 0, -5);
    frame.currentValue = currentValue;
    
    -- Separador
    local separator = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal");
    separator:SetPoint("TOP", currentValue, "BOTTOM", 0, -15);
    separator:SetText("────────────────────");
    
    -- Botón Auto
    local btnAuto = CreateFrame("Button", "HealBot_LangBtn_Auto", frame, "UIPanelButtonTemplate");
    btnAuto:SetWidth(250);
    btnAuto:SetHeight(25);
    btnAuto:SetPoint("TOP", separator, "BOTTOM", 0, -10);
    btnAuto:SetText("🌐 Auto (Detectar / Detect)");
    btnAuto:SetScript("OnClick", function()
        HealBot_SetLanguage("auto");
        HealBot_UpdateLanguageSelector();
    end);
    frame.btnAuto = btnAuto;
    
    -- Botón English
    local btnEnglish = CreateFrame("Button", "HealBot_LangBtn_English", frame, "UIPanelButtonTemplate");
    btnEnglish:SetWidth(120);
    btnEnglish:SetHeight(25);
    btnEnglish:SetPoint("TOPLEFT", btnAuto, "BOTTOMLEFT", 0, -5);
    btnEnglish:SetText("🇬🇧 English");
    btnEnglish:SetScript("OnClick", function()
        HealBot_SetLanguage("en");
        HealBot_UpdateLanguageSelector();
    end);
    frame.btnEnglish = btnEnglish;
    
    -- Botón Español
    local btnSpanish = CreateFrame("Button", "HealBot_LangBtn_Spanish", frame, "UIPanelButtonTemplate");
    btnSpanish:SetWidth(120);
    btnSpanish:SetHeight(25);
    btnSpanish:SetPoint("TOPRIGHT", btnAuto, "BOTTOMRIGHT", 0, -5);
    btnSpanish:SetText("🇪🇸 Español");
    btnSpanish:SetScript("OnClick", function()
        HealBot_SetLanguage("es");
        HealBot_UpdateLanguageSelector();
    end);
    frame.btnSpanish = btnSpanish;
    
    -- Botón Cerrar
    local btnClose = CreateFrame("Button", "HealBot_LangBtn_Close", frame, "UIPanelButtonTemplate");
    btnClose:SetWidth(100);
    btnClose:SetHeight(25);
    btnClose:SetPoint("BOTTOM", frame, "BOTTOM", 0, 15);
    btnClose:SetText("Cerrar / Close");
    btnClose:SetScript("OnClick", function()
        HealBot_LanguageFrame:Hide();
    end);
    frame.btnClose = btnClose;
    
    -- Botón de cerrar (X)
    local closeButton = CreateFrame("Button", nil, frame, "UIPanelCloseButton");
    closeButton:SetPoint("TOPRIGHT", frame, "TOPRIGHT", -5, -5);
    
    return frame;
end

-- Actualizar selector de idioma
function HealBot_UpdateLanguageSelector()
    if not HealBot_LanguageFrame then
        return;
    end
    
    local currentLang = HealBot_GetCurrentLanguage();
    local effectiveLang = HealBot_GetEffectiveLanguage();
    
    -- Actualizar texto de idioma actual
    local displayText = "";
    if currentLang == "auto" then
        if effectiveLang == "es" then
            displayText = "Auto (➡️ Español)";
        else
            displayText = "Auto (➡️ English)";
        end
    elseif currentLang == "en" then
        displayText = "English";
    elseif currentLang == "es" then
        displayText = "Español";
    end
    
    HealBot_LanguageFrame.currentValue:SetText(displayText);
    
    -- Resaltar botón seleccionado
    HealBot_LanguageFrame.btnAuto:UnlockHighlight();
    HealBot_LanguageFrame.btnEnglish:UnlockHighlight();
    HealBot_LanguageFrame.btnSpanish:UnlockHighlight();
    
    if currentLang == "auto" then
        HealBot_LanguageFrame.btnAuto:LockHighlight();
    elseif currentLang == "en" then
        HealBot_LanguageFrame.btnEnglish:LockHighlight();
    elseif currentLang == "es" then
        HealBot_LanguageFrame.btnSpanish:LockHighlight();
    end
end

-- Mostrar selector de idioma
function HealBot_ShowLanguageSelector()
    if not HealBot_LanguageFrame then
        HealBot_CreateLanguageSelector();
    end
    
    HealBot_UpdateLanguageSelector();
    HealBot_LanguageFrame:Show();
end

-- Comando para abrir selector
function HealBot_LanguageCommand(cmd)
    if cmd == "" or cmd == "select" or cmd == "selector" or cmd == "change" or cmd == "cambiar" then
        HealBot_ShowLanguageSelector();
    else
        -- Cambiar directamente
        if cmd == "auto" then
            HealBot_SetLanguage("auto");
        elseif cmd == "en" or cmd == "english" or cmd == "ingles" then
            HealBot_SetLanguage("en");
        elseif cmd == "es" or cmd == "spanish" or cmd == "español" or cmd == "espanol" then
            HealBot_SetLanguage("es");
        else
            DEFAULT_CHAT_FRAME:AddMessage("HealBot Language Commands:", 0.5, 1, 0.5);
            DEFAULT_CHAT_FRAME:AddMessage("/hb lang - Abrir selector / Open selector", 1, 1, 1);
            DEFAULT_CHAT_FRAME:AddMessage("/hb lang auto - Auto detect", 1, 1, 1);
            DEFAULT_CHAT_FRAME:AddMessage("/hb lang en - English", 1, 1, 1);
            DEFAULT_CHAT_FRAME:AddMessage("/hb lang es - Español", 1, 1, 1);
        end
    end
end

-- Inicializar al cargar
local function OnLoad()
    -- Cargar idioma guardado
    if HealBot_Config and HealBot_Config.Language then
        HealBot_Language.current = HealBot_Config.Language;
    end
end

-- Registrar evento de carga
local frame = CreateFrame("Frame");
frame:RegisterEvent("ADDON_LOADED");
frame:SetScript("OnEvent", function()
    if arg1 == "HealBot" then
        OnLoad();
    end
end);
