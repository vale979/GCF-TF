from datetime import date

def get_date():
    today = date.today()
    return today.strftime("%Y-%b-%d"), 200
