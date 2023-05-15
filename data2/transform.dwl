%dw 2.0
output application/json
---
data : payload.data filterObject (typeOf($) as String != "Array") pluck
{
   name: $$,
   value : $,
}

//Used filter operator to filter the "data" object, then used pluck over it to fetch keys and values