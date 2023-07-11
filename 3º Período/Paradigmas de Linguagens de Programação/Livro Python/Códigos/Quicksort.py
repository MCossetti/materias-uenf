def quicksort(arr):
    if len(arr) <= 1:
        return arr
    else:
        pivot = arr[0]
        less = [x for x in arr[1:] if x <= pivot]
        greater = [x for x in arr[1:] if x > pivot]
        return quicksort(less) + [pivot] + quicksort(greater)
    
arr = [4, 2, 7, 1, 3]
sorted_arr = quicksort(arr)
print('\nVetor ordenado: ', sorted_arr)
