import pandas as pd

print("=" * 70)
print("CSV FIXER - Komma → Punt voor Supabase")
print("=" * 70)
print()

# Lijst van bestanden om te fixen
bestanden = [
    ('TwinScale_Kassadata_Sample.csv', 'TwinScale_Kassadata_Fixed.csv'),
    ('TwinScale_Matches_Output.csv', 'TwinScale_Matches_Fixed.csv'),
    ('TwinScale_Dashboard_KPIs.csv', 'TwinScale_KPIs_Fixed.csv'),
]

for input_file, output_file in bestanden:
    try:
        print(f"Fixen: {input_file}")
        
        # Laad CSV
        df = pd.read_csv(input_file)
        
        # Fix alle numerieke kolommen
        for col in df.columns:
            # Probeer te detecteren of het een float kolom is
            if df[col].dtype == 'object':  # String kolom
                try:
                    # Probeer te converteren (komma → punt)
                    test = df[col].astype(str).str.replace(',', '.', regex=False)
                    test_numeric = pd.to_numeric(test, errors='coerce')
                    
                    # Als >50% succesvol geconverteerd → het is een nummer kolom
                    if test_numeric.notna().sum() / len(test_numeric) > 0.5:
                        df[col] = test_numeric
                        print(f"  ✓ {col} gefixed")
                except:
                    pass
        
        # Sla op met punt als decimaal
        df.to_csv(output_file, index=False)
        print(f"✅ Opgeslagen: {output_file}")
        print()
        
    except FileNotFoundError:
        print(f"⚠️  {input_file} niet gevonden, overslaan")
        print()
    except Exception as e:
        print(f"❌ Fout bij {input_file}: {e}")
        print()

print("=" * 70)
print("✅ KLAAR!")
print("=" * 70)
print()
print("Upload nu deze bestanden naar Supabase:")
print("  • TwinScale_Kassadata_Fixed.csv → tabel 'transacties'")
print("  • TwinScale_Matches_Fixed.csv → tabel 'matches'")
print("  • TwinScale_KPIs_Fixed.csv → tabel 'kpis'")
print()