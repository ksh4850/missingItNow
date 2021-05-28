;(function($){

    var song = {
        init: function(){
            this.section1Fn();
            this.section3Fn();
            this.section4Fn();
        },
        section1Fn:function(){
            var $slideWrap = $('#section1 .slide-wrap');
            var $prevBtn = $('#section1 .prev-btn');
            var $nextBtn = $('#section1 .next-btn');
            var cnt = -1;
            var $stopBtn = $('#section1 .stop-btn');
            var setId= null;
            var t = 0;
            

            function mainSlideFn(){
                console.log(cnt);
                $slideWrap.stop().animate({left:1903*cnt},1000,function(){
                    if(cnt >= 0){cnt = -3;}
                    if(cnt <= -4){cnt = -1;}
                    $slideWrap.stop().animate({left:1903*cnt},0)
                })
            }

            function nextSlideFn(){
                cnt--;
                mainSlideFn()
            }

            function prevSlideFn(){
                cnt++;
                mainSlideFn()
            }

            $prevBtn.on({
                click:function(){
                    prevSlideFn()
                }
            })
            $nextBtn.on({
                click:function(){
                    nextSlideFn();
                }
            })
            setId = setInterval(nextSlideFn,2000);

            $stopBtn.on({
                click:function(){
                    if(t == 0){
                        clearInterval(setId);
                        t= 1;
                    }else if(t == 1){
                        setId = setInterval(nextSlideFn,2000);
                        t= 0;
                    }
                }
            })


        },
        section3Fn:function(){
            var $slideWrap = $('#section3 .slide-wrap');
            var $prevBtn = $('#section3 .prev-btn');
            var $nextBtn = $('#section3 .next-btn');
            var cnt = 0;

            function mainSlideFn(){
                console.log(cnt);
                    $slideWrap.stop().animate({left:240*cnt},1000)
            }
            function nextSlideFn(){
                cnt--;
                mainSlideFn()
            }
            function prevSlideFn(){
                cnt++;
                mainSlideFn()
            }

            $prevBtn.on({
                click:function(){
                    if(cnt <0){
                        prevSlideFn()
                    }
                }
            })
            $nextBtn.on({
                click:function(){
                    if(cnt >-2){
                        nextSlideFn()
                    }
                }
            })

        },
        section4Fn:function(){
            var $slideLeft = $('#section4 .left-content .slide');
            var $slideRigth = $('#section4 .right-content .slide');
            var $rightSlideWrap = $('#section4 .right-content .slide-wrap');
            var $leftSlideWrap = $('#section4 .left-content .slide-wrap');
            var $prevBtnleft = $('#section4 .left-content .prev-btn');
            var $nextBtnleft = $('#section4 .left-content .next-btn');
            var cntleft = -1;
            var $prevBtnright = $('#section4 .right-content .prev-btn');
            var $nextBtnright = $('#section4 .right-content .next-btn');
            var cntright = -1;

            function mainLeftSlideFn(){
                console.log(cntleft);
                $leftSlideWrap.stop().animate({left:570*cntleft},1000,function(){
                    if(cntleft >= 0){cntleft = -3;}
                    if(cntleft <= -4){cntleft = -1;}
                    $leftSlideWrap.stop().animate({left:570*cntleft},0)
                })
            }

            function mainRightSlideFn(){
                console.log(cntright);
                $rightSlideWrap.stop().animate({left:570*cntright},1000,function(){
                    if(cntright >= 0){cntright = -3;}
                    if(cntright <= -4){cntright = -1;}
                    $rightSlideWrap.stop().animate({left:570*cntright},0)
                })
            }

            function nextLeftSlideFn(){
                cntleft--;
                mainLeftSlideFn()
            }

            function prevLeftSlideFn(){
                cntleft++;
                mainLeftSlideFn()
            }
            function nextRightSlideFn(){
                cntright--;
                mainRightSlideFn()
            }

            function prevRightSlideFn(){
                cntright++;
                mainRightSlideFn()
            }

            $prevBtnleft.on({
                click:function(){
                    prevLeftSlideFn()
                }
            })
            $nextBtnleft.on({
                click:function(){
                    nextLeftSlideFn();
                }
            })
            $prevBtnright.on({
                click:function(){
                    prevRightSlideFn()
                }
            })
            $nextBtnright.on({
                click:function(){
                    nextRightSlideFn();
                }
            })



        }

    }
    song.init();

})(jQuery);