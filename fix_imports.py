#!/usr/bin/env python3
import os
import re

# Diretório de origem
core_dir = "/workspaces/CELESTE-GAME-ANDROID-/src/Celeste.Core"

# Arquivos para corrigir imports
files_to_fix = {
    f"{core_dir}/Celeste/Celeste.cs": [
        ("using Celeste.Pico8;", "// using Celeste.Pico8; // Desabilitado para Android"),
    ],
    f"{core_dir}/Celeste/Commands.cs": [
        ("using Celeste.Editor;", "// using Celeste.Editor; // Desabilitado para Android"),
        ("using Celeste.Pico8;", "// using Celeste.Pico8; // Desabilitado para Android"),
    ],
    f"{core_dir}/Celeste/Level.cs": [
        ("using Celeste.Editor;", "// using Celeste.Editor; // Desabilitado para Android"),
    ],
    f"{core_dir}/Celeste/OuiMainMenu.cs": [
        ("using Celeste.Pico8;", "// using Celeste.Pico8; // Desabilitado para Android"),
    ],
    f"{core_dir}/Celeste/PicoConsole.cs": [
        ("using Celeste.Pico8;", "// using Celeste.Pico8; // Desabilitado para Android"),
    ],
}

for filepath, replacements in files_to_fix.items():
    if os.path.exists(filepath):
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
        
        for old, new in replacements:
            content = content.replace(old, new)
        
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"✓ Corrigido: {filepath}")
    else:
        print(f"✗ Não encontrado: {filepath}")

# Corrigir Engine.cs
engine_path = f"{core_dir}/Monocle/Engine.cs"
if os.path.exists(engine_path):
    with open(engine_path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Comentar OnExiting
    pattern = r'protected override void OnExiting\(object sender, EventArgs args\)\s*\{\s*base\.OnExiting\(sender, args\);\s*MInput\.Shutdown\(\);\s*\}'
    replacement = '''// OnExiting não existe em MonoGame Android
	// protected override void OnExiting(object sender, EventArgs args)
	// {
	// 	base.OnExiting(sender, args);
	// 	MInput.Shutdown();
	// }'''
    
    content = re.sub(pattern, replacement, content)
    
    with open(engine_path, 'w', encoding='utf-8') as f:
        f.write(content)
    
    print(f"✓ Corrigido: {engine_path}")
else:
    print(f"✗ Não encontrado: {engine_path}")

print("Limpeza concluída!")
