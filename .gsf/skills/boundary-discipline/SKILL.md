---
name: boundary-discipline
description: "Place guards at system boundaries, trust internal types, keep business logic pure. Use when wiring validation, error handling, or framework adapters."
---

# Boundary Discipline

Put validation, error handling, and framework adapters at system boundaries. Once data crosses the boundary, trust your internal types. Keep business logic pure.

## Boundaries

System boundaries are where external data enters your system:
- HTTP request handlers
- Database queries
- File I/O
- External API calls
- Message queues
- Configuration files

## At the Boundary

1. **Validate external data.** Parse and validate at the boundary. Reject invalid data immediately.
2. **Parse to internal types.** Convert external representations (JSON, XML, query params) to your internal types.
3. **Handle errors from external systems.** Catch and handle errors from databases, APIs, etc. at the boundary.
4. **Apply framework adapters.** Convert framework-specific constructs to your domain types at the boundary.

## Inside the Boundary

1. **Trust your types.** Once data is in your internal types, assume it's valid. Don't re-validate.
2. **Keep business logic pure.** Business logic should not depend on frameworks or external systems. It should operate on internal types only.
3. **Don't catch internal errors.** Let internal errors propagate. Handle them at a higher level if needed.

## Example

Bad:
```python
def process_user(user_data):
    # Validation mixed with business logic
    if not user_data.get('email'):
        raise Error('No email')
    if not is_valid_email(user_data['email']):
        raise Error('Invalid email')
    # Business logic assumes user_data might be invalid
    ...
```

Good:
```python
# At the boundary (HTTP handler)
def handle_request(request):
    user_data = parse_and_validate_user(request.json)
    user = process_user(user_data)  # Business logic, trusts user is valid

def parse_and_validate_user(data):
    # All validation here
    email = data['email']
    if not is_valid_email(email):
        raise ValidationError('Invalid email')
    return User(email=email)  # Internal type

def process_user(user: User):
    # Pure business logic, trusts user is valid
    ...
```

## Output

Code with validation and error handling at boundaries, and pure business logic inside.
