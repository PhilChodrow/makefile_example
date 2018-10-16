import pandas as pd

df = pd.read_csv('data/words.txt', names = ['word'])
df['length'] = df.word.str.len()
length_tab = df.groupby(['length']).size()
length_tab.to_csv('throughput/length_tab.csv')

