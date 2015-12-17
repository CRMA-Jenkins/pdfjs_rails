# PdfjsRails

Gem gem packages PDF.js from Mozilla for rails asset pipeline.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pdfjs_rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pdfjs_rails

## Usage

Reference scripts directly

    Rails.application.config.assets.precompile += %w(pdfjs/compatibility.js)

Or include them

    Rails.application.config.assets.precompile += %w(pdfjs/viewer.js)

    $ cat pdfjs/viewer.js
    //= require pdfjs/l10n
    //= require pdfjs/download_manager
    //= require pdfjs/ui_utils
    //= require pdfjs/default_preferences
    //= require pdfjs/preferences
    //= require pdfjs/mozPrintCallback_polyfill
    //= require pdfjs/view_history
    //= require pdfjs/pdf_find_bar
    //= require pdfjs/pdf_find_controller
    //= require pdfjs/pdf_link_service
    //= require pdfjs/pdf_history
    //= require pdfjs/secondary_toolbar
    //= require pdfjs/pdf_presentation_mode
    //= require pdfjs/grab_to_pan
    //= require pdfjs/hand_tool
    //= require pdfjs/overlay_manager
    //= require pdfjs/password_prompt
    //= require pdfjs/pdf_document_properties
    //= require pdfjs/pdf_rendering_queue
    //= require pdfjs/pdf_page_view
    //= require pdfjs/text_layer_builder
    //= require pdfjs/annotations_layer_builder
    //= require pdfjs/pdf_viewer
    //= require pdfjs/pdf_thumbnail_view
    //= require pdfjs/pdf_thumbnail_viewer
    //= require pdfjs/pdf_outline_view
    //= require pdfjs/pdf_attachment_view

Precompiled scripts and resources served from engines `public/`

    $ ls public/pdfjs
    cmaps/
    locale/
    pdf.js
    pdf.worker.js

So view looks like

    <%= javascript_include_tag "pdfjs/compatibility" %>
    <link rel="resource" type="application/l10n" href="/pdfjs/locale/locale.properties" />
    <script src="/pdfjs/pdf.js"></script>
    <%= javascript_include_tag "pdfjs/viewer" %>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
