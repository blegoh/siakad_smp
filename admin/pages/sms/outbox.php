<div class="art-post-body">
                                    <div class="art-post-inner art-article">
                                        <h2 class="art-postheader">
                                            List SMS Outbox
                                        </h2>
                                        <div class="art-postcontent">
                                                <!-- article-content -->
                                                <?php
												satpam(array(2,3));
                                                $sql_outbox = "select o.ID,o.updatedindb,date,DestinationNumber,o.TextDecoded, p.name
																from (select ID,updatedindb,date_format(updatedindb,'%d %M %Y %T')date,
																REPLACE(DestinationNumber, '+62', '0') DestinationNumber,
																 textdecoded from outbox) o
																left join (select id,name,REPLACE(Number, '+62', '0') Number
																from pbk) p on o.DestinationNumber = p.Number
																ORDER BY o.`updatedindb` DESC";
                                                $query_outbox = mysql_query($sql_outbox);
                                                ?>
                                                <table class="art-article" border="0" cellspacing="0" cellpadding="0">
                                                <tr>
                                                    <th>UpdatedInDB</th>
                                                    <th>DestinationNumber</th>
                                                    <th>Text</th>
                                                    <th>Action</th>
                                                </tr>
                                                <?php
                                                while($row_outbox = mysql_fetch_object($query_outbox)){
                                                    echo "<tr>
                                                          <td>".$row_outbox->date."</td>
                                                          <td>";
														  if($row_outbox->name == ""){
															  echo $row_outbox->DestinationNumber;
														  }else{
															  echo $row_outbox->name;
														  }
														  echo "</td>
                                                          <td>".$row_outbox->TextDecoded."</td>
                                                          <td><a class='confirm' href=\"engines/delete.php?p=outbox&id=".$row_outbox->ID."\" >[DELETE]</a></td>";
                                                }
                                                ?>
                                                </table>
                                                <!-- /article-content -->
                                        </div>
                                        <div class="cleared"></div>
                                    </div>
                            
                            	    <div class="cleared"></div>
                                </div>