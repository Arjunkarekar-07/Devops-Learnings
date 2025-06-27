def bool_to_word(boolean):
    if bool(boolean) and boolean is not None:
        return "Yes"
    else: 
        return "No" 
    
    
    
a  = bool_to_word(False)

print(a)