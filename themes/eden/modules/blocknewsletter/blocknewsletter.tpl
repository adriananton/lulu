{*
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2015 PrestaShop SA
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}
<!-- Block Newsletter module-->
<div class="col-xs-4 text-center"><h4>The EXPERIENCE</h4>
	<div class="type-text">
		<h5><a href="#">Our Philosophy</a></h5>
	</div>
	<div class="type-text">
		<h5><a href="#">How is done</a></h5>
	</div>
</div>
<div class="col-xs-4 text-center"><h4>Usefull INFORMATIONS</h4>
	<div class="type-text">
		<h5><a href="#">Contact</a></h5>
	</div>
	<div class="type-text">
		<h5><a href="#">Customer Service</a></h5>
	</div>
	<div class="type-text">
		<h5><a href="#">Payment &amp; shipment</a></h5>
	</div>
	<div class="type-text">
		<h5><a href="#">Return Policy</a></h5>
	</div>
	<div class="type-text">
		<h5><a href="#">Workroom</a></h5>
	</div>
	<div class="type-text">
		<h5><a href="#">Privacy Policy</a></h5>
	</div>
	<div class="type-text">
		<h5><a href="#">Legal</a></h5>
	</div>
</div>
<div id="newsletter_block_left" class="block">
	<h4>{l s='Newsletter' mod='blocknewsletter'}</h4>
	<div class="block_content">
		<form action="{$link->getPageLink('index', null, null, null, false, null, true)|escape:'html':'UTF-8'}" method="post">
			<div class="form-group{if isset($msg) && $msg } {if $nw_error}form-error{else}form-ok{/if}{/if}" >
				<input class="inputNew form-control grey newsletter-input" id="newsletter-input" type="text" name="email" size="18" value="{if isset($msg) && $msg}{$msg}{elseif isset($value) && $value}{$value}{else}{l s='Enter your e-mail' mod='blocknewsletter'}{/if}" />
                <button type="submit" name="submitNewsletter" class="btn btn-default button button-small">
                    <span>{l s='Ok' mod='blocknewsletter'}</span>
                </button>
				<input type="hidden" name="action" value="0" />
			</div>
		</form>
	</div>
    {hook h="displayBlockNewsletterBottom" from='blocknewsletter'}
	<div id="social_block" class="pull-left">
		<ul>
				<li class="facebook">
					<a class="_blank" href="http://www.facebook.com">
						<span>{l s='Facebook' mod='blocksocial'}</span>
					</a>
				</li>

				<li class="twitter">
					<a class="_blank" href="http://www.twitter.com">
						<span>{l s='Twitter' mod='blocksocial'}</span>
					</a>
				</li>
			{if isset($rss_url) && $rss_url != ''}
				<li class="rss">
					<a class="_blank" href="{$rss_url|escape:html:'UTF-8'}">
						<span>{l s='RSS' mod='blocksocial'}</span>
					</a>
				</li>
			{/if}
				<li class="youtube">
					<a class="_blank" href="http://www.youtube.com">
						<span>{l s='Youtube' mod='blocksocial'}</span>
					</a>
				</li>
				<li class="google-plus">
					<a class="_blank" href="http://plus.google.com/" rel="publisher">
						<span>{l s='Google Plus' mod='blocksocial'}</span>
					</a>
				</li>
			{if isset($pinterest_url) && $pinterest_url != ''}
				<li class="pinterest">
					<a class="_blank" href="{$pinterest_url|escape:html:'UTF-8'}">
						<span>{l s='Pinterest' mod='blocksocial'}</span>
					</a>
				</li>
			{/if}
			{if isset($vimeo_url) && $vimeo_url != ''}
				<li class="vimeo">
					<a class="_blank" href="{$vimeo_url|escape:html:'UTF-8'}">
						<span>{l s='Vimeo' mod='blocksocial'}</span>
					</a>
				</li>
			{/if}
				<li class="instagram">
					<a class="_blank" href="http://www.instagram.com/">
						<span>{l s='Instagram' mod='blocksocial'}</span>
					</a>
				</li>
		</ul>
		<h4>{l s='Follow us' mod='blocksocial'}</h4>
	</div>
</div>

<!-- /Block Newsletter module-->
{strip}
{if isset($msg) && $msg}
{addJsDef msg_newsl=$msg|@addcslashes:'\''}
{/if}
{if isset($nw_error)}
{addJsDef nw_error=$nw_error}
{/if}
{addJsDefL name=placeholder_blocknewsletter}{l s='Enter your e-mail' mod='blocknewsletter' js=1}{/addJsDefL}
{if isset($msg) && $msg}
	{addJsDefL name=alert_blocknewsletter}{l s='Newsletter : %1$s' sprintf=$msg js=1 mod="blocknewsletter"}{/addJsDefL}
{/if}
{/strip}