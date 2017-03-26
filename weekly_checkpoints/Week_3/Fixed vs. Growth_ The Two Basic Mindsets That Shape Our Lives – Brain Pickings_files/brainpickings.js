/*jshint browser:true */
/*!
* FitVids 1.1
*
* Copyright 2013, Chris Coyier - http://css-tricks.com + Dave Rupert - http://daverupert.com
* Credit to Thierry Koblentz - http://www.alistapart.com/articles/creating-intrinsic-ratios-for-video/
* Released under the WTFPL license - http://sam.zoy.org/wtfpl/
*
*/
!function(t){"use strict";t.fn.fitVids=function(e){var i={customSelector:null,ignore:null};if(!document.getElementById("fit-vids-style")){var r=document.head||document.getElementsByTagName("head")[0],a=".fluid-width-video-wrapper{width:100%;position:relative;padding:0;}.fluid-width-video-wrapper iframe,.fluid-width-video-wrapper object,.fluid-width-video-wrapper embed {position:absolute;top:0;left:0;width:100%;height:100%;}",d=document.createElement("div");d.innerHTML='<p>x</p><style id="fit-vids-style">'+a+"</style>",r.appendChild(d.childNodes[1])}return e&&t.extend(i,e),this.each(function(){var e=['iframe[src*="player.vimeo.com"]','iframe[src*="youtube.com"]','iframe[src*="youtube-nocookie.com"]','iframe[src*="kickstarter.com"][src*="video.html"]',"object","embed"];i.customSelector&&e.push(i.customSelector);var r=".fitvidsignore";i.ignore&&(r=r+", "+i.ignore);var a=t(this).find(e.join(","));a=a.not("object object"),a=a.not(r),a.each(function(e){var i=t(this);if(!(i.parents(r).length>0||"embed"===this.tagName.toLowerCase()&&i.parent("object").length||i.parent(".fluid-width-video-wrapper").length)){i.css("height")||i.css("width")||!isNaN(i.attr("height"))&&!isNaN(i.attr("width"))||(i.attr("height",9),i.attr("width",16));var a="object"===this.tagName.toLowerCase()||i.attr("height")&&!isNaN(parseInt(i.attr("height"),10))?parseInt(i.attr("height"),10):i.height(),d=isNaN(parseInt(i.attr("width"),10))?i.width():parseInt(i.attr("width"),10),o=a/d;if(!i.attr("id")){var h="fitvid"+e;i.attr("id",h)}i.wrap('<div class="fluid-width-video-wrapper"></div>').parent(".fluid-width-video-wrapper").css("padding-top",100*o+"%"),i.removeAttr("height").removeAttr("width")}})})}}(window.jQuery||window.Zepto);

// Load Typekit fonts
try{Typekit.load();}catch(e){}

var BrainPickings = BrainPickings || {};

(function($) {
  BrainPickings.queryStringValues = function( url ) {
    var params = [];

    if ( url ) {
      params = url.substring(url.indexOf('?') + 1).split('&');
    } else {
      params = window.location.search.substr(1).split('&');
    }

    var b = {};
    for (var i = 0; i < params.length; ++i) {
      var p=params[i].split('=');
      if (p.length != 2) continue;
      b[p[0]] = decodeURIComponent(p[1].replace(/\+/g, " "));
    }
    return b;
  };

  BrainPickings.header = function() {
    // mobile nav menu toggle
    var $nav = $( '#js-responsive-nav' );
    $( '.responsive-nav__toggle' ).on( 'click', function() {
      $nav.toggleClass( 'responsive-nav--open' );
      return false;
    } );

    var $header = $( 'header' );
    var $document = $( document );

    // scroll the header
    $document.scroll( function(e) {
      if ( $document.scrollTop() > 70 ) {
        $header.addClass( 'smaller' );
      } else {
        $header.removeClass( 'smaller' );
      }

      $nav.removeClass( 'responsive-nav--open' );
    });
  };

  BrainPickings.tags = function() {
    $( '#tags' ).on( 'change', function() {
      if ( this.value.length > 0 ) {
        location.href = this.value;
      }
		});
  };

  BrainPickings.fullSite = function() {
    // quick test to make sure localstorage is available
    try {
      localStorage.setItem( 'BrainPickings', 'BrainPickings' );
      localStorage.removeItem( 'BrainPickings' );
    } catch (e) {
      return false;
    }

    var targetWidth = 980;
    var viewport = $('meta[name="viewport"]');

    // check to see if local storage value is set on page load
    localStorage.isResponsive = (undefined == localStorage.isResponsive) ? 'true' : localStorage.isResponsive;

    var showFullSite = function() {
      localStorage.responsiveViewportValue = viewport.attr( 'content' );
      viewport.attr( 'content', 'width=' + targetWidth );

      if ( !$( '#view-responsive' ).length ) {
        $( '.rwd-display-options' ).append( '<h1><span id="view-responsive">View Mobile Optimized</span></h1>' );
      }

      localStorage.isResponsive = 'false';
    }

    $( '.rwd-display-option' ).on( 'click', function() {
      showFullSite();
    });

    $( '.rwd-display-options' ).on( 'click', '#view-responsive', function() {
      localStorage.isResponsive = 'true';
      viewport.attr( 'content', localStorage.responsiveViewportValue );
    });

    // show full viewport if it was selected previously
    if ( 'false' == localStorage.isResponsive ) {
      showFullSite();
    }
  };

  BrainPickings.unsubscribe = function() {
    $( '.unsubscribe-form form' ).submit( function() {
      var $form = $( this );
      var email = $form.find( "input[name='first_name']" ).val();

      $form.find( '.alert' ).hide();
      $form.find( ".mc_button" ).prop( 'disabled', true );
      jQuery.post( brainpickings_ajax.ajax_url, $form.serialize(), function( response ) {
        if ( response ) {
          if ( response.error ) {
            $form.find( '.alert' ).text( response.error ).show();
          } else if ( response.success ) {
            $form.html( '<p>Please check your email for unsubscribe instructions.</p>' );
          } else {
            $form.find( '.alert' ).text( "Yikes! Something went wrong. The server sent an invalid response. Please try again and let me know if it keeps happening." ).show();
          }
        } else {
          $form.find( '.alert' ).text( "Yikes! Something went wrong. The server sent an invalid response. Please try again and let me know if it keeps happening." ).show();
        }
      }).fail(function(jqXHR, textStatus, errorThrown) {
        $form.find( '.alert' ).text( "Yikes! Something went wrong. Please try again and let us know if it keeps happening. (" + jqXHR.status + ")" ).show();
      }).always(function() {
        $form.find( ".mc_button" ).prop( 'disabled', false );
      });

      return false;
    });

  };

  BrainPickings.Braintree = {
    container: null,
    donateFrame: null,

    loadFrame: function( type ) {
      var BT = BrainPickings.Braintree;

      if ( null === BT.donateFrame ) {
        var url = '/donation-form/';
        if ( type ) {
          url += '?type=' + type;
        }
        BT.donateFrame = $('<iframe>', {
          src: url,
          id:  'donate-frame',
          frameborder: 0,
          allowtransparency: 'true',
          scrolling: 'no',
          width: '100%',
          height: '100%'
        }).appendTo('body');

        BT.donateFrame.css({
          display: 'block'
        });

      // the frame arleady exists
      } else {
        BT.donateFrame.css({
          display: 'block'
        });

        BT.donateFrame[0].contentWindow.showFrame();
      }
    },

    setupBody: function() {
      var BT = BrainPickings.Braintree;

      BT.scrollPosition = $( document ).scrollTop();
      $( 'body' ).addClass( 'donating' );

      $( 'html' ).css({
        overflow: 'hidden'
      });
    },

    teardownBody: function() {
      var BT = BrainPickings.Braintree;
      $( 'body' ).removeClass( 'donating' );
      $( document ).scrollTop( BT.scrollPosition );

      $( 'html' ).css({
        overflow: 'visible'
      });
    },

    hideFrame: function() {
      var BT = BrainPickings.Braintree;

      BT.donateFrame.css({
        display: 'none'
      });
    },

    removeFrame: function() {
      BrainPickings.Braintree.donateFrame.remove();
      BrainPickings.Braintree.donateFrame = null;
    },

    init: function() {
      var BT = BrainPickings.Braintree;

      $( '.donate-link' ).on( 'click', function() {
        var type = $(this).data( 'type' ) || '';

        BT.loadFrame( type );
        return false;
      } );

      // load donation form if query param matches
      if ( $( 'body.use-paypal' ).length === 0 ) {
        var values = BrainPickings.queryStringValues();
        if ( values['open'] ) {
          if ( 'one-time' == values['open'] ) {
            BT.loadFrame( 'one-time' );
          } else {
            BT.loadFrame( 'monthly' );
          }
          return;
        }
      }
    },

    initForm: function() {
      var BT = BrainPickings.Braintree;

      BT.container = $( '#donate' );

      $( document ).ready( function() {
          BT.container.find( '#first-name' ).focus();
      });

      BT.container.submit( function() {
        BT.hideErrorMessage();
        BT.disableSubmit();
      });

      BT.braintreeSetup();

      // show the frame
      window.showFrame = BT.showFrame;
      BT.showFrame();

      BT.container.find( '.cancel' ).on( 'click', function() {
        window.parent.BrainPickings.Braintree.teardownBody();
        BT.container.slideUp( function() {
          window.parent.BrainPickings.Braintree.hideFrame();
        });

        return false;
      } );

      BT.container.find( '.close' ).on( 'click', function() {
        window.parent.BrainPickings.Braintree.teardownBody();
        BT.container.slideUp( function() {
          window.parent.BrainPickings.Braintree.hideFrame();
          window.parent.BrainPickings.Braintree.removeFrame();
        });

        return false;
      } );


      BT.container.find( '.card-label' ).each( function() {
        var $label = $(this);

        $label.find( 'input' ).on( 'focus', function() {
          $label.addClass( 'active' );
        }).on( 'blur', function() {
          $label.removeClass( 'active' );
          this.value = $.trim( this.value );

          if ( $label.hasClass( 'first-name-label' ) || $label.hasClass( 'last-name-label' ) ) {
            if ( this.value.length <= 0 ) {
              $label.addClass( 'invalid' );
            } else {
              $label.removeClass( 'invalid' );
            }
          }

          if ( $label.hasClass( 'donation-amount-label' ) ) {
            if ( BT.isCurrency( this.value ) ) {
              $label.removeClass( 'invalid' );
            } else {
              $label.addClass( 'invalid' );
            }
          }

          if ( $label.hasClass( 'email-label' ) ) {
            if ( this.value.length <= 0 || ( this.value.length > 0 && !BT.isEmail( this.value ) ) ) {
              $label.addClass( 'invalid' );
            } else {
              $label.removeClass( 'invalid' );
            }
          }
        }).on( 'keyup', function() {
          if ( this.value.length > 0 ) {
            $label.addClass( 'show-label' );
          } else {
            $label.removeClass( 'show-label' );
          }
        });
      });

      $( '#donation-amount' ).on( 'keydown', function( e ) {
        // console.log( e.keyCode );
        // http://stackoverflow.com/questions/995183/how-to-allow-only-numeric-0-9-in-html-inputbox-using-jquery
        // Allow: backspace, delete, tab, escape, enter
        if ( $.inArray( e.keyCode, [46, 8, 9, 27, 13, 110] ) !== -1 ||

          // Allow: Ctrl+A, Command+A
          ( e.ctrlKey === true || e.metaKey === true ) ||

          // Allow: home, end, left, right, down, up
          ( e.keyCode >= 35 && e.keyCode <= 40 ) ) {

          // let it happen, don't do anything
          return;
        }

        // Ensure that it is a number or period and stop the keypress
        if ( ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) && e.keyCode != 190 ) {
          e.preventDefault();
        } else {
          if ( 0 === this.value.length ) {
            // in case a period is first
            if ( e.keyCode == 190 ) {
              e.preventDefault();
            } else {
              this.value = '$';
            }

          } else if ( this.value.indexOf( '.' ) > 0 ) {
            // make sure there's only one period
            if ( e.keyCode == 190 ) {
              e.preventDefault();
            }
            // make sure you can't key in more than 2 cents places
            // if ( this.value.substring( this.value.indexOf( '.' ) ).length >= 3 ) {
              // e.preventDefault();
            // }
          }
        }
      } );

      $( '#donation-amount' ).on( 'keyup', function( e ) {
        if ( '$' === this.value ) {
          this.value = '';
          $(this).trigger( 'keyup' );
        }
      } );

      var donationAmounts = BT.container.find( '.donation-amounts a' );
      donationAmounts.on( 'click', function() {
        donationAmounts.removeClass( 'active' );
        $(this).addClass( 'active' );
        return false;
      });

      var donationTypes = BT.container.find( '.donation-type-select' );
      donationTypes.on( 'click', function() {
        var $link = $( this );
        BT.container.find( '.donation-type' ).hide();
        BT.container.find( '#donation-' + $link.data( 'type' ) ).show();

        donationTypes.removeClass( 'active' );
        $link.addClass( 'active' );

        if ( 'one-time' === $link.data( 'type' ) ) {
          $( '#donation-amount' ).focus();
        }

        return false;
      });
    },

    showFrame: function() {
      var BT = BrainPickings.Braintree;
      BT.container.slideDown( function() {
        window.parent.BrainPickings.Braintree.setupBody();
      });
    },

    braintreeSetup: function() {
      var BT = BrainPickings.Braintree;

      braintree.setup( BT.token, "dropin", {
      	container: "payment-form",
				dataCollector: {
					kount: { environment: 'production' }
				},
				onReady: function(braintreeInstance) {
					$( '#device_data' ).val( braintreeInstance.deviceData );
				},
      	onError: function( error ) {
          BT.validateForm();
          BT.enableSubmit();
      	},
        onPaymentMethodReceived: function( response ) {
          if ( BT.validateForm() ) {

            var type = false;
            var amount = false;
            if ( $( '#monthly-donation' ).hasClass( 'active' ) ) {
              type = 'monthly';
              amount = $( '.donation-amounts .active' ).first().data( 'value' );

            } else if ( $( '#one-time-donation' ).hasClass( 'active' ) ) {
              type = 'one-time';
              amount = $( '#donation-amount' ).val();

              if ( '$' === amount.substring(0, 1) ) {
                amount = amount.substring( 1 );
              }
            }

            // this shouldn't happen but just in case
            if ( false === type ) {
              BT.showErrorMessage( "Please select monthly or one-time donation.");
              BT.enableSubmit();
              return;
            } else if ( false === amount ) {
              BT.enableSubmit();
              BT.showErrorMessage( "Please enter/select a donation amount.");
              return;
            }

            var data = {
              'action': 'donate',
              'bt_nonce': response.nonce,
              'wp_nonce': BrainPickings.Braintree.wp_nonce,
              'first_name': $( '#first-name' ).val(),
              'last_name': $( '#last-name' ).val(),
              'email': $( '#email' ).val(),
              'type': type,
              'amount': amount,
              'device_data': $( '#device_data' ).val(),
              'recaptcha_response': $( '#g-recaptcha-response' ).val()
            };

            // console.log( 'posting', data );
            $.post( brainpickings_ajax.ajax_url, data, function( response ) {

              if ( response ) {
                if ( response.error ) {
                  BT.showErrorMessage( response.error );
                  if ( response.reload && grecaptcha ) {
                    grecaptcha.reset();
                  }
                } else if ( response.success ) {

                  $( '#donation-form').hide();
                  $( '#donation-success' ).fadeIn();

                } else {
                  BT.showErrorMessage( "Yikes - something is amiss. The server sent an invalid response. Please try again and let me know if it keeps happening." );
                }
              } else {
                BT.showErrorMessage( "Yikes - something is amiss. Please try again and let me know if it keeps happening." );
              }

            }).fail(function(jqXHR, textStatus, errorThrown) {
              BT.showErrorMessage( "Yikes – something technical is amiss. But it’s probably temporary, so please come back and try again soon! (" + jqXHR.status + ")"  );
            }).always(function() {
              BT.enableSubmit();
            });
          } else {
            BT.enableSubmit();
          }
        }
      });
    },

    enableSubmit: function() {
      var $buttons = $( '.donate-button');
      $buttons.find( 'input' ).prop( 'disabled', false ).val( 'Donate' );
      $buttons.find( '.cancel' ).show();
    },

    disableSubmit: function() {
      var $buttons = $( '.donate-button');
      $buttons.find( 'input' ).prop( 'disabled', true ).val( 'Donating...' );
      $buttons.find( '.cancel' ).hide();
    },

    showErrorMessage: function(message) {
      var BT = BrainPickings.Braintree;
      BT.container.find( '.error-message' ).text( message ).show();
    },

    hideErrorMessage: function() {
      var BT = BrainPickings.Braintree;
      BT.container.find( '.error-message' ).hide();
    },

    validateForm: function() {
      var BT = BrainPickings.Braintree;
      var isValid = true;

      // $( '.card-label' ).removeClass( 'invalid' );

      if ( $( '#one-time-donation' ).hasClass( 'active' ) ) {
        var amount = $( '#donation-amount' );
        var value = amount.val();

        if ( BT.isCurrency( value ) ) {
          $( '.donation-amount-label' ).removeClass( 'invalid' );
        } else {
          amount.focus();
          $( '.donation-amount-label' ).addClass( 'invalid' );
          isValid = false;
        }
      }

      var email = $( '#email' );
      if ( email.val().length <= 0 || !BT.isEmail( email.val() ) ) {
        email.focus();
        $( '.email-label' ).addClass( 'invalid' );
        isValid = false;
      }

      var lastName = $( '#last-name' );
      if ( lastName.val().length <= 0 ) {
        lastName.focus();
        $( '.last-name-label' ).addClass( 'invalid' );
        isValid = false;
      }

      var firstName = $( '#first-name' );
      if ( firstName.val().length <= 0 ) {
        firstName.focus();
        $( '.first-name-label' ).addClass( 'invalid' );
        isValid = false;
      }

      return isValid;
    },

    isEmail: function( email ) {
      // http://stackoverflow.com/a/1373724/1544368
      return /[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?/.test( email );
    },

    isCurrency: function( value ) {
      if ( !value || value.length <= 0 ) {
        return false;
      }

      if ( '$' === value.substring(0, 1) ) {
        value = value.substring( 1 );
      }

      if ( value.indexOf( '.' ) < 0 ) {
        value += '.00';
      }

      // value needs to be greater than $1 to process
      if ( value >= 1 && /^\d+(?:\.\d{0,2})$/.test( value ) ) {
        return true
      }

      return false;
    }
  };

  $(document).ready( function() {
    BrainPickings.Braintree.init();
    BrainPickings.unsubscribe();
    BrainPickings.fullSite();
    $( ".post" ).fitVids({
      customSelector: "iframe[src^='https://embed-ssl.ted.com'], iframe[src^='https://w.soundcloud.com']"
    });
  });
})(jQuery);
