<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <meta name="renderer" content="webkit">
        <title>{{name}}</title>
        <link rel="stylesheet" type="text/css" href="amWiki/css/markdownbody.github.css" />
        <link rel="stylesheet" type="text/css" href="amWiki/css/lhjs.github-gist.css" />
        <link rel="stylesheet" type="text/css" href="amWiki/css/amWiki.css" />
    </head>

    <body>
        <!-- 头部 -->
        <header class="header">
            <div class="header-inner">
                <a class="logo" href="?file=首页">
                    <img src="{{logo}}" /><i></i>
                    <b>{{name}}</b>
                    <span>{{version}}</span>
                </a>
                <div class="menu-icon" id="menuIcon">
                    <svg>
                        <use xlink:href="#icon:navStart"></use>
                    </svg>
                </div>
            </div>
        </header>
        <!-- 页面 -->
        <div class="container" id="container">
            <div class="nav" id="nav">
                <div class="menu-filter">
                    <svg>
                        <use xlink:href="#icon:navFilter"></use>
                    </svg>
                    <input type="text" id="menuFilter" value="" placeholder="请输入筛选条件" title="请输入筛选条件" />
                    <i class="off" title="清空筛选">&times;</i>
                </div>
                <div class="menu-search" id="searchShow" title="全库搜索">
                    <svg>
                        <use xlink:href="#icon:search"></use>
                    </svg>
                </div>
                <nav class="menubar scroller" id="menuBar">
                    <div class="scroller-inner">
                        <div class="scroller-content"></div>
                    </div>
                </nav>
            </div>
            <div class="main scroller" id="main">
                <div class="main-inner scroller-inner">
                    <article class="markdown-body scroller-content" id="view"></article>
                    <!-- 上下翻页 -->
                    <div class="main-sibling scroller-content" id="mainSibling">
                        <p><span>上一篇：</span>
                            <a href="#"></a>
                        </p>
                        <p><span>下一篇：</span>
                            <a href="#"></a>
                        </p>
                    </div>
                    <!-- 全库搜索 -->
                    <div class="search-box" id="searchBox">
                        <div class="search-update">
                            <input type="button" id="searchUpdate" value="更新所有缓存" />
                            <div class="text">
                                <p>上次完全更新：<time id="cacheLasttime">0000-00-00 00:00:00</time></p>
                                <p>文档总数：<b id="cacheDocTotal">0</b> / <span>已缓存：<i id="cacheState">0%</i></span></p>
                            </div>
                        </div>
                        <h2>全库搜索</h2>
                        <div class="search-input">
                            <input type="text" id="searchText" placeholder="请输入搜索内容" />
                            <input type="button" id="search" value="搜 索" />
                        </div>
                        <div class="search-results" id="results">
                            <div class="search-result-message" id="resultMsg"></div>
                            <ul class="search-list"></ul>
                            <div class="search-result-more" id="resultMore">显示更多</div>
                            <script id="template:searchResult" type="text/html">
                                <li class="search-item">
                                    <a href="?file={{path}}">
                                        <div class="content">
                                            <strong>{{title}}</strong> {{api}} {{content}}
                                        </div>
                                        <div class="bottom">
                                            <p>位置：<span>{{path}}</span></p>
                                            <div class="time">最后缓存于
                                                <time>{{time}}</time>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            </script>
                        </div>
                    </div>
                    <!-- 接口测试 -->
                    {{amWiki.testing.tpl}}
                </div>
            </div>
        </div>
        <aside>
            <!-- 侧边目录 -->
            <div class="contents" id="contents">
                <div class="btn">
                    <svg>
                        <use xlink:href="#icon:contents"></use>
                    </svg>
                    <span>目录</span>
                </div>
                <div class="contents-list">
                    <p>
                        <a id="contentsTitle" href="#客户日志流水接口示例">客户日志流水接口示例</a>
                    </p>
                    <div class="markdown-contents"></div>
                </div>
            </div>
            <!-- 返回顶部 -->
            <div class="back-top" id="backTop">
                <a class="back-icon" href="#">
                    <svg>
                        <use xlink:href="#icon:backTop"></use>
                    </svg>
                </a>
                <a class="back-text" href="#">返回顶部</a>
            </div>
        </aside>
        <footer>
            <!-- 签名 -->
            <div class="signature">Powered by
                <a href="https://github.com/TevinLi/amWiki" target="_blank">amWiki</a>
            </div>
        </footer>
        <!-- js -->
        <div class="hidden">
            <script type="text/javascript" src="amWiki/js/gbk.js"></script>
            <script type="text/javascript" src="amWiki/js/jquery-compat-3.1.0.min.js"></script>
            <script type="text/javascript" src="amWiki/js/marked.min.js"></script>
            <script type="text/javascript" src="amWiki/js/highlight.min.js"></script>
            <script type="text/javascript" src="amWiki/js/raphael-min.js"></script>
            <script type="text/javascript" src="amWiki/js/flowchart.min.js"></script>
            <script type="text/javascript" src="amWiki/js/amWiki.tools.js"></script>
            <script type="text/javascript" src="amWiki/js/amWiki.storage.js"></script>
            <script type="text/javascript" src="amWiki/js/amWiki.search.js"></script>
            <script type="text/javascript" src="amWiki/js/amWiki.docs.js"></script>
            {{amWiki.testing.js}}
            <script type="text/javascript" src="amWiki/js/amWiki.scrollbar.js"></script>
            <script type="text/javascript" src="amWiki/js/amWiki.js"></script>
        </div>
        <!-- svg -->
        <div class="hidden" id="svgSymbols"></div>
        <!-- 低版本浏览器警告 -->
        <div id="lowBrowser">
            <div></div>
            <p><span>您的浏览器版本过低，不支持浏览本Wiki，请升级或更换您的浏览器再试！</span></p>
            <script>
                (function(win) {
                    var notice = document.getElementById('lowBrowser');
                    //jQuery 3.x 需要 addEventListener 方法支持
                    if(typeof win.addEventListener == 'undefined') {
                        notice.style.display = 'block';
                    } else {
                        var comments = notice.previousSibling;
                        if(comments.nodeType == 8) {
                            comments.parentNode.removeChild(comments);
                        } else if(comments.previousSibling.nodeType == 8) {
                            comments = comments.previousSibling;
                            comments.parentNode.removeChild(comments);
                        }
                        notice.parentNode.removeChild(notice);
                    }
                    notice = comments = null;
                })(window);
            </script>
        </div>
    </body>

</html>