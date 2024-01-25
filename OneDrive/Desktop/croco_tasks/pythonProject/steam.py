import pandas as pd
import time

file_path = 'steam-200k.csv'
columns_for_dedup = [0, 1, 2]
chunk_size = 10000
unique_records = set()

start_time = time.time()

for chunk in pd.read_csv(file_path, header=None, iterator=True, chunksize=chunk_size):
    deduplicated_chunk = chunk.drop_duplicates(subset=columns_for_dedup)
    unique_records.update(map(tuple, deduplicated_chunk.values))

end_time = time.time()
execution_time = end_time - start_time
print(f"Execution time: {execution_time:.3f} seconds")

deduplicated_df = pd.DataFrame(list(unique_records))
deduplicated_df.to_csv('result.csv', index=False, header=False)
