import re


def fuzzyfinder(input, collection, accessor=lambda x: x):
    """
    Args:
    input (str): A partial string which is typically entered by a user.
    collection (iterable): A collection of strings which will be filtered
    based on the `input`.
    Returns:
    suggestions (generator): A generator object that produces a list of
    suggestions narrowed down from `collection` using the `input`.
    """
    
    suggestions = []
    input = str(input)
    pat = '.*?'.join(map(re.escape,input))
    regex = re.compile(pat)
    for item in collection:
        r = regex.search(accessor(item))
        if r:
            suggestions.append((len(r.group()),r.start(),accessor(item),item))
    print(suggestions)
    return (z[-1] for z in sorted(suggestions))

collection = ["comp9900","comp9024","comp9321","comp2041","geos9820","gmat9600"]

input = input()
output = fuzzyfinder(input, collection, accessor=lambda x: x)
for i in output:
    print(i)
