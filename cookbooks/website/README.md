website Cookbook
================
This cookbook installs a web server and serves our home page.

Usage
-----
Just include `website` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[website]"
  ]
}
```

TODO
----
This is a trivial example with lots of work left undone.

* Move the content of the home page to a separate repository 
under it's own version control.

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Nathen Harvey
