-- ═════════════════════════════════════════════════════════════════════════
-- HealBot - Temática Oscura
-- El Séquito del Terror
-- Creado por DarckRovert (Elnazzareno)
-- ═════════════════════════════════════════════════════════════════════════

-- Aplicar temática oscura de El Séquito del Terror
function HealBot_ApplyDarkTheme()
    if HealBot_Options then
        -- Fondo morado oscuro con transparencia
        HealBot_Options:SetBackdropColor(0.08, 0, 0.15, 0.92);
        -- Borde morado brillante
        HealBot_Options:SetBackdropBorderColor(0.5, 0.1, 0.7, 1);
        
        -- Cambiar color del header si existe
        local header = getglobal("HealBot_Options_Header");
        if header then
            header:SetVertexColor(0.6, 0.2, 0.8);
        end
    end
end

-- Event frame para aplicar tema cuando se carga el addon
local themeFrame = CreateFrame("Frame");
themeFrame:RegisterEvent("ADDON_LOADED");
themeFrame:SetScript("OnEvent", function()
    if event == "ADDON_LOADED" and arg1 == "HealBot" then
        -- Aplicar tema inmediatamente
        HealBot_ApplyDarkTheme();
        
        -- Hook para aplicar tema cuando se muestra la ventana
        if HealBot_Options and HealBot_Options.Show then
            local originalShow = HealBot_Options.Show;
            HealBot_Options.Show = function(self)
                originalShow(self);
                HealBot_ApplyDarkTheme();
            end
        end
    end
end);
