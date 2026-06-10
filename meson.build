## Copyright (C) 2024 by LH_Mouse <lh_mouse@126.com>
##
## Permission to use, copy, modify, and/or distribute this
## software for any purpose with or without fee is hereby granted.
##
## THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL
## WARRANTIES WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED
## WARRANTIES OF MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL
## THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT, INDIRECT, OR
## CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
## LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT,
## NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
## CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

project('http-parser', 'c', version: '2.9.4', license: 'MIT')

# Build and install these
install_headers('http_parser.h')

libhttp_parser = both_libraries('http_parser',
      sources: 'http_parser.c',
      c_args: [ '-Wall', '-Wextra', '-fexceptions' ],
      soversion: meson.project_version().split('.')[0],
      version: meson.project_version(),
      install: true)

libhttp_parser_pc = import('pkgconfig').generate(libhttp_parser,
      name: 'http-parser',
      url: 'https://github.com/lhmouse/http-parser',
      description: 'http request/response parser for c')

# Run the test
t = executable('self_test', 'test.c', link_with: libhttp_parser)
test('self_test', t)
