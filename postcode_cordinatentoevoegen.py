import pgeocode
import pandas as pd
import os

# 1. Zorg dat we in de juiste map kijken
bestandsnaam = 'TwinScale_Matches_Simpel.csv'

if not os.path.exists(bestandsnaam):
    print(f"FOUT: Ik kan het bestand '{bestandsnaam}' niet vinden in deze map!")
    print(f"De bestanden in deze map zijn: {os.listdir()}")
else:
    # 2. Laad de CSV en dwing de postcode kolom naar tekst (string)
    df = pd.read_csv(bestandsnaam)
    
    # We zetten de kolom 'postcode' om naar tekst, voor het geval het nu getallen zijn
    df['postcode'] = df['postcode'].astype(str)

    # 3. Initialiseer de postcodezoeker voor Nederland
    nomi = pgeocode.Nominatim('nl')

    # We halen alleen de cijfers uit de postcode (veiligere methode met r'...')
    df['postcode_cijfers'] = df['postcode'].str.extract(r'(\d+)').astype(str)

    print("Coördinaten ophalen... even geduld.")
    
    # 4. Zoek de data op
    geo_data = nomi.query_postal_code(df['postcode_cijfers'].tolist())

    # 5. Voeg latitude en longitude toe
    df['latitude'] = geo_data['latitude'].values
    df['longitude'] = geo_data['longitude'].values

    # 6. Sla op
    output_naam = 'Matches_met_coordinaten.csv'
    df.to_csv(output_naam, index=False)
    
    print(f"GELUKT! Je nieuwe bestand staat klaar: {output_naam}")
    print(df[['postcode', 'latitude', 'longitude']].head()) # Toon even de eerste 5 resultaten