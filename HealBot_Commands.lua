-- ═════════════════════════════════════════════════════════════════════════
-- HealBot - Comandos Extendidos
-- Creado por DarckRovert (Elnazzareno)
-- El Séquito del Terror
-- ═════════════════════════════════════════════════════════════════════════

-- Guardar la función original
local HealBot_SlashCmd_Original = HealBot_SlashCmd;

-- Extender la función de comandos
function HealBot_SlashCmd(cmd)
    -- Procesar comandos del botón flotante
    local _, _, command, subcommand = string.find(cmd, "^(%\S+)%\s*(.*)$");
    
    if command == "button" or command == "btn" then
        HealBot_FloatingButton_Command(subcommand or "");
        return;
    end
    
    if command == "lang" or command == "language" or command == "idioma" then
        HealBot_LanguageCommand(subcommand or "");
        return;
    end
    
    if command == "help" or command == "ayuda" or command == "?" then
        HealBot_ShowHelp();
        return;
    end
    
    -- Llamar a la función original para otros comandos
    HealBot_SlashCmd_Original(cmd);
end

-- Función de ayuda
function HealBot_ShowHelp()
    DEFAULT_CHAT_FRAME:AddMessage("══════════════════════════════════════════════════════════════════════", 0.5, 1, 0.5);
    DEFAULT_CHAT_FRAME:AddMessage("HealBot v2.0 - El Séquito del Terror", 0.5, 1, 0.5);
    DEFAULT_CHAT_FRAME:AddMessage("Por DarckRovert (Elnazzareno)", 0.8, 0.8, 0.8);
    DEFAULT_CHAT_FRAME:AddMessage("══════════════════════════════════════════════════════════════════════", 0.5, 1, 0.5);
    DEFAULT_CHAT_FRAME:AddMessage(" ", 1, 1, 1);
    DEFAULT_CHAT_FRAME:AddMessage("Comandos Básicos:", 1, 1, 0.5);
    DEFAULT_CHAT_FRAME:AddMessage("/hb - Alternar panel principal", 1, 1, 1);
    DEFAULT_CHAT_FRAME:AddMessage("/hb options - Abrir opciones", 1, 1, 1);
    DEFAULT_CHAT_FRAME:AddMessage("/hb reset - Restablecer configuración", 1, 1, 1);
    DEFAULT_CHAT_FRAME:AddMessage("/hb ui - Recargar interfaz", 1, 1, 1);
    DEFAULT_CHAT_FRAME:AddMessage("/hb ver - Mostrar versión", 1, 1, 1);
    DEFAULT_CHAT_FRAME:AddMessage(" ", 1, 1, 1);
    DEFAULT_CHAT_FRAME:AddMessage("Botón Flotante:", 1, 1, 0.5);
    DEFAULT_CHAT_FRAME:AddMessage("/hb button show - Mostrar botón", 1, 1, 1);
    DEFAULT_CHAT_FRAME:AddMessage("/hb button hide - Ocultar botón", 1, 1, 1);
    DEFAULT_CHAT_FRAME:AddMessage("/hb button toggle - Alternar botón", 1, 1, 1);
    DEFAULT_CHAT_FRAME:AddMessage("/hb button lock - Bloquear botón", 1, 1, 1);
    DEFAULT_CHAT_FRAME:AddMessage("/hb button unlock - Desbloquear botón", 1, 1, 1);
    DEFAULT_CHAT_FRAME:AddMessage("/hb button reset - Restablecer botón", 1, 1, 1);
    DEFAULT_CHAT_FRAME:AddMessage(" ", 1, 1, 1);
    DEFAULT_CHAT_FRAME:AddMessage("Idioma / Language:", 1, 1, 0.5);
    DEFAULT_CHAT_FRAME:AddMessage("/hb lang - Abrir selector de idioma", 1, 1, 1);
    DEFAULT_CHAT_FRAME:AddMessage("/hb lang auto - Detección automática", 1, 1, 1);
    DEFAULT_CHAT_FRAME:AddMessage("/hb lang en - English", 1, 1, 1);
    DEFAULT_CHAT_FRAME:AddMessage("/hb lang es - Español", 1, 1, 1);
    DEFAULT_CHAT_FRAME:AddMessage("══════════════════════════════════════════════════════════════════════", 0.5, 1, 0.5);
end
