def flatten_dict(dd, separator='_', prefix=''):
    return {prefix + separator + k if prefix else k: v
            for kk, vv in dd.items()
            for k, v in flatten_dict(vv, separator, kk).items()
            } if isinstance(dd, dict) else {prefix: dd}


# initialising_dictionary
ini_dict = {'raz': {'naz': {'w': 8}},
            'w': {'raz': {'naz': 1}},
            'naz': {'w': {'w': 5, 'raz': 3}}}

# priniting initial dictionary
print("initial_dictionary", str(ini_dict))

# printing final dictionary
print("final_dictionary", str(flatten_dict(ini_dict)))