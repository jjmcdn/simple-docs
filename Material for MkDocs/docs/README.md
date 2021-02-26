# Material for MkDocs

This is just an experiment to determine how nicely a Material for MkDocs configuration would work with other markdown-rendering utilities.  I'm using examples here exclusively from [Material for MkDocs] reference page.

It is **not** expected that the documentation in this page will look good under most circumstances, this is intended purely as a technology demonstration.

Installing Material for MkDocs is quite straightforward:

``` shell
pip3 install mkdocs-material
```

I tested this out using the [online instructions].

## Abbreviations

The HTML specification is maintained by the W3C. Lorem. Etiam in massa. Nam ut metus. In rhoncus venenatis tellus. Etiam aliquam. Ut aliquam lectus ut lectus. Nam turpis lacus, tristique sit amet, convallis sollicitudin, commodo a, purus. Nulla vitae.

This repository, where applicable, is covered by the GPLv2 license.

*[HTML]: Hyper Text Markup Language
*[W3C]: World Wide Web Consortium

[ref](https://squidfunk.github.io/mkdocs-material/reference/abbreviations/)


## Admonitions

Et malesuada fames ac turpis egestas. Duis ultricies urna. Etiam enim urna, pharetra suscipit, varius et, congue quis, odio. Donec lobortis, elit bibendum euismod faucibus, velit nibh egestas libero, vitae pellentesque elit augue ut massa.

!!! note
    Lacus eu convallis sagittis, quam magna placerat est, vitae imperdiet mauris arcu ac dui. In ac urna non justo posuere mattis. Suspendisse egestas bibendum nulla. In erat nunc, posuere sed, auctor.

    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

Nulla consequat erat at massa. Vivamus id mi. Morbi purus enim, dapibus a, facilisis non, tincidunt at, enim. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis imperdiet eleifend arcu. Cras magna ligula, consequat at, tempor non, posuere nec, libero. Vestibulum vel ipsum. Praesent congue justo et nunc. Vestibulum nec felis vitae nisl pharetra sollicitudin. Quisque nec arcu vel tellus tristique vestibulum. 

[ref](https://squidfunk.github.io/mkdocs-material/reference/admonitions/)


## Buttons

Tortor. Vivamus posuere nisi mollis dolor. Quisque porttitor nisi ac elit. Nullam tincidunt ligula vitae nulla.

Vivamus sit amet risus et ipsum viverra malesuada. Duis luctus. Curabitur adipiscing metus et felis. Vestibulum tortor. Pellentesque purus. Donec pharetra, massa quis malesuada auctor, tortor ipsum lobortis ipsum, eget facilisis ante nisi eget lectus. Sed a est. Aliquam nec felis eu sem euismod viverra. Suspendisse felis mi, dictum id, convallis ac, mattis non, nibh. Donec sagittis quam eu mauris. Phasellus et leo at quam dapibus pellentesque. In non lacus. Nullam tristique nunc ut arcu scelerisque aliquam. Nullam viverra magna vitae leo. Vestibulum in lacus sit.


[Subscribe to our mailing list](#){: .md-button }

[ref](https://squidfunk.github.io/mkdocs-material/reference/buttons/)


## Code Blocks

Eros ante, mattis ullamcorper, posuere quis, tempor vel, metus. Maecenas cursus cursus lacus. Sed risus magna, aliquam sed, suscipit sit amet, porttitor quis, odio. Suspendisse cursus justo nec urna. Suspendisse potenti. In hac habitasse platea dictumst. Cras quis lacus. Vestibulum rhoncus congue lacus. Vivamus euismod, felis quis commodo viverra, dolor elit dictum ante, et mollis eros augue at est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nulla lectus sem, tristique sed, semper in, hendrerit non, sem. Vivamus dignissim massa in ipsum. Morbi fringilla ullamcorper ligula. Nunc turpis. Mauris vitae sapien. Nunc luctus bibendum velit.

Morbi faucibus.

Sample C code from cfag12864b-example.c:

``` C
/*
 * is set (x, y) pixel?
 *
 * Pixel off: return = 0
 * Pixel on:  return = 1
 */
static unsigned char cfag12864b_isset(unsigned char x, unsigned char y)
{
	if (CFAG12864B_CHECK(x, y))
		if (cfag12864b_buffer[CFAG12864B_ADDRESS(x, y)] &
			CFAG12864B_BIT(x % CFAG12864B_BPB))
			return 1;

	return 0;
}

```

Sample code from `rpmsg_client_sample.c`:

``` C hl_lines="5-8 13"
static int rpmsg_sample_probe(struct rpmsg_device *rpdev)
{
	int ret;
	struct instance_data *idata;

	dev_info(&rpdev->dev, "new channel: 0x%x -> 0x%x!\n",
					rpdev->src, rpdev->dst);

	idata = devm_kzalloc(&rpdev->dev, sizeof(*idata), GFP_KERNEL);
	if (!idata)
		return -ENOMEM;

	dev_set_drvdata(&rpdev->dev, idata);

	/* send a message to our remote processor */
	ret = rpmsg_send(rpdev->ept, MSG, strlen(MSG));
	if (ret) {
		dev_err(&rpdev->dev, "rpmsg_send failed: %d\n", ret);
		return ret;
	}

	return 0;
}
```

Python numbered line example:

``` python linenums="1"
def bubble_sort(items):
    for i in range(len(items)):
        for j in range(len(items) - 1 - i):
            if items[j] > items[j + 1]:
                items[j], items[j + 1] = items[j + 1], items[j]
```

[ref](https://squidfunk.github.io/mkdocs-material/reference/code-blocks/)

An example using the keys extension.

Most Linux kernels include a feature known as the [Magic SysRq key] allowing for certain operations to be performed even when the system is busy or in a soft lockup state.  While it can be changed, most Linux distributions leave it set to the default: ++alt+"SysRq"++ plus some additional key.  ++alt+"SysRq"+h++ will display a list of recognized key combinations.


## Content Tabs

Urna. Pellentesque et urna sit amet leo accumsan volutpat. Nam molestie lobortis lorem. Quisque eu nulla. Donec id orci in ligula dapibus egestas. Donec sed velit ac lectus mattis sagittis.

In hac habitasse platea dictumst. Maecenas in ligula. Duis tincidunt odio sollicitudin quam. Nullam non mauris. Phasellus lacinia, velit sit amet bibendum euismod, leo diam interdum ligula, eu scelerisque sem purus in tellus.

Lorem ipsum dolor sit amet, consectetuer adipiscing elit. In sit amet nunc.

Code blocks first:

=== "C"

    ``` c
    #include <stdio.h>

    int main(void) {
      printf("Hello world!\n");
      return 0;
    }
    ```

=== "C++"

    ``` c++
    #include <iostream>

    int main(void) {
      std::cout << "Hello world!" << std::endl;
      return 0;
    }
    ```

Other content, in this case lists:

=== "Unordered list"

    * Sed sagittis eleifend rutrum
    * Donec vitae suscipit est
    * Nulla tempor lobortis orci

=== "Ordered list"

    1. Sed sagittis eleifend rutrum
    2. Donec vitae suscipit est
    3. Nulla tempor lobortis orci

If enabling [SuperFences](https://squidfunk.github.io/mkdocs-material/reference/content-tabs/#superfences):

!!! example

    === "Unordered List"

        _Example_:

        ``` markdown
        * Sed sagittis eleifend rutrum
        * Donec vitae suscipit est
        * Nulla tempor lobortis orci
        ```

        _Result_:

        * Sed sagittis eleifend rutrum
        * Donec vitae suscipit est
        * Nulla tempor lobortis orci

    === "Ordered List"

        _Example_:

        ``` markdown
        1. Sed sagittis eleifend rutrum
        2. Donec vitae suscipit est
        3. Nulla tempor lobortis orci
        ```

        _Result_:

        1. Sed sagittis eleifend rutrum
        2. Donec vitae suscipit est
        3. Nulla tempor lobortis orci


[ref](https://squidfunk.github.io/mkdocs-material/reference/content-tabs/)


## Tables

Massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Etiam egestas posuere metus. Aliquam erat volutpat. Donec non tortor. Vivamus posuere nisi mollis dolor. Quisque porttitor nisi ac elit. Nullam tincidunt ligula vitae nulla. Vivamus sit amet risus et ipsum viverra malesuada. Duis luctus. Curabitur adipiscing metus et felis. Vestibulum tortor. Pellentesque purus. Donec pharetra, massa quis malesuada auctor, tortor ipsum lobortis ipsum, eget facilisis ante nisi eget lectus. Sed a est. Aliquam nec felis eu sem euismod viverra. Suspendisse felis mi, dictum id, convallis ac, mattis non, nibh. Donec sagittis quam eu mauris. Phasellus et leo.

Basic data tables:

| Method      | Description                          |
| ----------- | ------------------------------------ |
| `GET`       | :material-check:     Fetch resource  |
| `PUT`       | :material-check-all: Update resource |
| `DELETE`    | :material-close:     Delete resource |

Tables with alignment:

| Method      | Description                          |
| :---------- | :----------------------------------- |
| `GET`       | :material-check:     Fetch resource  |
| `PUT`       | :material-check-all: Update resource |
| `DELETE`    | :material-close:     Delete resource |

Donec auctor, nulla id laoreet volutpat, pede erat feugiat ante, auctor facilisis dui augue non turpis. Suspendisse mattis metus et justo. Aliquam erat volutpat. Suspendisse potenti. Nam hendrerit lorem commodo metus.

[ref](https://squidfunk.github.io/mkdocs-material/reference/data-tables/)


## Diagrams

Omitting diagrams examples since it relies on an external module and based on the documentation is only for "insiders", requiring additional github access.  I haven't investigated what that means.

[ref](https://squidfunk.github.io/mkdocs-material/reference/diagrams/)


## Footnotes

Lorem ipsum[^1] dolor sit amet, consectetur adipiscing elit.[^2]

[^1]: Lorem ipsum dolor sit amet, consectetur adipiscing elit.
[^2]:
    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla et euismod
    nulla. Curabitur feugiat, tortor non consequat finibus, justo purus auctor
    massa, nec semper lorem quam in massa.

[ref](https://squidfunk.github.io/mkdocs-material/reference/footnotes/)


## Formatting

Text can be {--deleted--} and replacement text {++added++}. This can also be combined into {~~one~>a single~~} operation. {==Highlighting==} is also possible {>>and comments can be added inline<<}.

{==

Formatting can also be applied to blocks, by putting the opening and closing tags on separate lines and adding new lines between the tags and the content.

==}

[ref](https://squidfunk.github.io/mkdocs-material/reference/formatting/)


## Icons+Emojis

Intentionally skipping these examples.

[ref](https://squidfunk.github.io/mkdocs-material/reference/icons-emojis/)


## Images

![Placeholder](https://dummyimage.com/600x400/eee/aaa){: align=right }

Pede. Donec porta.

Etiam facilisis. Nam suscipit. Ut consectetuer leo vehicula augue. Aliquam cursus. Integer pharetra rhoncus massa. Cras et ligula vel quam tristique commodo. Sed est lectus, mollis quis, lacinia id, sollicitudin nec, eros. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Morbi urna dui, fermentum quis, feugiat imperdiet, imperdiet id, sapien. Phasellus auctor nunc. Vivamus eget augue quis neque vestibulum placerat. Duis placerat. Maecenas accumsan rutrum lacus. Vestibulum lacinia semper nibh. Aenean diam odio, scelerisque at, ullamcorper nec, tincidunt dapibus, quam. Duis vel ante nec tortor porta mollis. Praesent orci. Cras dignissim vulputate metus.

Phasellus eu quam. Quisque interdum cursus purus. In orci. Maecenas vehicula. Sed et mauris. Praesent feugiat viverra lacus. Suspendisse pulvinar lacus ut nunc. Quisque nisi. Suspendisse id risus nec nisi ultrices ornare. Donec eget tellus. Nullam molestie placerat felis. Aenean facilisis. Nunc erat. Integer in tellus. Mauris volutpat, neque vel ornare porttitor, dolor nisi sagittis dolor, sit amet bibendum orci leo blandit lacus.

In id velit sodales arcu iaculis venenatis. Etiam at leo. Vivamus vitae sem. Mauris volutpat congue risus. Curabitur leo. Aenean tempor tortor eget ligula. Aenean vel augue. Vestibulum ac justo. In hac habitasse platea dictumst. Nam dignissim nisi non mauris. 

[ref](https://squidfunk.github.io/mkdocs-material/reference/images/)


## Lists

- Nulla et rhoncus turpis. Mauris ultricies elementum leo. Duis efficitur accumsan nibh eu mattis. Vivamus tempus velit eros, porttitor placerat nibh lacinia sed. Aenean in finibus diam.

    * Duis mollis est eget nibh volutpat, fermentum aliquet dui mollis.
    * Nam vulputate tincidunt fringilla.
    * Nullam dignissim ultrices urna non auctor.

[ref](https://squidfunk.github.io/mkdocs-material/reference/lists/)


## MathJax

Omitting MathJax examples.

[ref](https://squidfunk.github.io/mkdocs-material/reference/mathjax/)


## Meta-Tags

Setting the page title:

---
title: Lorem ipsum dolor sit amet
---

Adding custom meta tags:

{% block extrahead %}
  <meta property="robots" content="noindex, nofollow" />
{% endblock %}

These appear to be exclusively useful for HTML generated documentation, it doesn't appear that it is possible to include these attributes in PDF meta-data as well.

[ref](https://squidfunk.github.io/mkdocs-material/reference/meta-tags/)


## Variables

Welcome to {{ config.site_name }}!

[ref](https://squidfunk.github.io/mkdocs-material/reference/variables/)


## Basic link references

[online instructions]: 	https://squidfunk.github.io/mkdocs-material/getting-started/
[Material for MkDocs]:	https://squidfunk.github.io/mkdocs-material/reference/buttons/
[Magic SysRq key]:		https://en.wikipedia.org/wiki/Magic_SysRq_key

## Snippets

Include snippets here, testing them out in the material format as well as seeing how they render with other tools.

--8<-- "LICENSE.md"
