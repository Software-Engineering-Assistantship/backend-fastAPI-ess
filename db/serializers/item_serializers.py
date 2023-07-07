def itemEntity(item) -> dict:
    return {
        "name": item["name"],
        "created_at": item["created_at"],
    }

def itemResponseEntity(item) -> dict:
    return {
        "id": item["id"],
        "name": item["name"],
        "created_at": item["created_at"],
    }

def itemListEntity(items) -> list:
    return [itemEntity(item) for item in items]