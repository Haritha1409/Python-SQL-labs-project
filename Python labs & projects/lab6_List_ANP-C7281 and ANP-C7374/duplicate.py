def find_duplicates(lst):
    seen = set()
    duplicates = set()
    
    for item in lst:
        if item in seen:
            duplicates.add(item)
        else:
            seen.add(item)
    
    return list(duplicates)
sample_list = [1, 2, 3, 4, 2, 5, 6, 3, 4]
duplicate_values = find_duplicates(sample_list)
print("Duplicate Values:", duplicate_values)
