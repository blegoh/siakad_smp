<div id="sidebar">
    <ul>
    <li>
        <div id="search">
            <form action="index.php?page=home" method="get">
            	<div>
                    <input id="search-text" type="text" value="" name="search">
                    <input id="search-submit" type="submit" value="">
                </div>
            </form>
        </div>
        <div style="clear: both;"> </div>
    </li>
	
	<li>
            <h2>Artikel</h2>
            <ul>
            <?php
			$sql_rss = "select * from artikel";
			$query_rss = mysql_query($sql_rss);
			while($row_rss = mysql_fetch_array($query_rss)){
			?>
			<li><a href="index.php?page=home&id=<?php echo $row_rss['id_artikel']; ?>"><?php echo $row_rss['judul']; ?></a></li>
            <?php
			}
			?>
        </ul>
	</li>
    <li>
        <h2>Powered By</h2>
        <center>
        <a href="lib/images/php_details.png" rel="facebox" title="PHP Logo"><img src="lib/images/php.png"  /></a>
        <a href="lib/images/ajax_details.png" rel="facebox" title="AJAX Logo"><img src="lib/images/ajax.png"  /></a>
        <a href="lib/images/mysql_details.png" rel="facebox" title="MySQL Logo"><img src="lib/images/mysql.png"  /></a>
        <a href="lib/images/jquery_details.png" rel="facebox" title="JQUERY Logo"><img src="lib/images/jquery.png"  /></a>
        </center>
    </li>
           
    </ul>
</div>