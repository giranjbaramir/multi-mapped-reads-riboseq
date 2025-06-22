# Step 6: Split SAM metadata into one Excel sheet per read ID
import pandas as pd

# Input and output paths
input_file = 'readID_RNAME_POS_CIGAR_seq_NH_HI.txt'
output_excel = 'readID_RNAME_POS_CIGAR_seq_NH_HI_split.xlsx'

# Load data
df = pd.read_csv(input_file, sep='\t', header=None,
                 names=['ReadID', 'RNAME', 'POS', 'CIGAR', 'Sequence', 'NH', 'HI'])

# Save each read to its own sheet
with pd.ExcelWriter(output_excel, engine='openpyxl') as writer:
    for read_id, group in df.groupby('ReadID'):
        sheet_name = read_id[:31]
        group.to_excel(writer, sheet_name=sheet_name, index=False)
