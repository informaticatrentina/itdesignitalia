<div class="u-content class-{$node.class_identifier}">

    <div class="u-content-main u-content-main-side">
        <div class="u-content-title">
            <h1>{$node.name|wash()}</h1>
            
            {if $node|has_attribute( 'sottotitolo' )}
            <div class="u-content-abstract">
                {attribute_view_gui attribute=$node|attribute( 'sottotitolo' )}
            </div>
            {/if}
            
            <div class="u-content-date">
                {include uri='design:openpa/parts/full/node_date.tpl'}
            </div>
        </div>

        {if $node|has_attribute( 'oggetto' )}
            <h3>{'Subject'|i18n('designitalia/full')}</h3>
            <div class="Prose" style='margin-top: 0 !important;'>
                {attribute_view_gui attribute=$node|attribute( 'oggetto' )}
            </div>
        {/if}
        
        {if $node|has_attribute( 'testo' )}
            <div class="Accordion fr-accordion js-fr-accordion u-margin-top-m" id="accordion-1">
                <h2 class="Accordion-header js-fr-accordion__header fr-accordion__header" id="accordion-header-0">
                    <span class="Accordion-link u-text-r-s">
                        {'Show measure text'|i18n('designitalia/full')}
                    </span>
                </h2>
                <div id="accordion-panel-0" class="Accordion-panel fr-accordion__panel js-fr-accordion__panel">
                    <div class="Prose u-layout-prose u-text-p u-padding-r-all">
                        {attribute_view_gui attribute=$node|attribute( 'testo' )}
                    </div>
                </div>
            </div>
        {/if}
        
        {*def $file = $node|attribute( 'documento' )}
        <a class="Button Button--default u-text-r-xs" href={concat("content/download/",$file.contentobject_id,"/",$file.id,"/file/",$file.content.original_filename)|ezurl}>
            <span class="u-color-white">
                <i class="mdi mdi-download mdi-36px"></i>
                {'Download internal measure'|i18n('designitalia/full')}
            </span>
        </a>
        {undef $file*}
        
        {include uri='design:openpa/parts/full/tags.tpl'}

    </div>
    
    <div class="u-content-related">
        
        {include uri='design:openpa/parts/full/related-riferimentiProvvedimento.tpl'}
        
        {include uri='design:openpa/parts/full/related-infoCircolare.tpl'}
        
        {include uri='design:openpa/parts/full/related-informazioni.tpl'}
        
        {include uri='design:openpa/parts/full/related-persone.tpl'}
        
        {include uri='design:openpa/parts/full/related-documentoCircolare.tpl'}
         
        {include uri='design:openpa/parts/full/related-allegati.tpl'}
        
        {include uri='design:openpa/parts/full/related-stampa.tpl' item=$node}
        
        {include uri='design:openpa/parts/full/related-share.tpl'}
    </div>
</div>

{if $node|has_attribute( 'testo' )}
    {include uri='design:openpa/parts/script/time-to-read.tpl' text=$node|attribute( 'testo' )}
{/if}