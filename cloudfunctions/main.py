from datetime import date


def get_date(req=None):
    today = date.today()
    date_str = today.strftime("%Y-%b-%d")
    return f"Current date is {date_str}", 200
