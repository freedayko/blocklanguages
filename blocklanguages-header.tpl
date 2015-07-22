{foreach from=$languages key=k item=language name="languages"}
    {if $language.iso_code != $lang_iso}
        {assign var=indice_lang value=$language.id_lang}
        {if isset($lang_rewrite_urls.$indice_lang)}
            <link rel="alternate" hreflang="{$language.iso_code|escape:'html':'UTF-8'}" href="{$lang_rewrite_urls.$indice_lang|escape:'html':'UTF-8'}">
        {else}
            <link rel="alternate" hreflang="{$language.iso_code|escape:'html':'UTF-8'}" href="{$link->getLanguageLink($language.id_lang)|escape:'html':'UTF-8'}">
        {/if}
    {/if}
{/foreach}
